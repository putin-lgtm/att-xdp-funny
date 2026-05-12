#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DIST_DIR="${DIST_DIR:-${ROOT_DIR}/dist}"
VERSION="${VERSION:-${GITHUB_REF_NAME:-dev}}"
ZIG_BIN="${ZIG_BIN:-zig}"
ZIG_LOCAL_CACHE_DIR="${ZIG_LOCAL_CACHE_DIR:-${DIST_DIR}/.zig-cache-local}"
ZIG_GLOBAL_CACHE_DIR="${ZIG_GLOBAL_CACHE_DIR:-${DIST_DIR}/.zig-cache-global}"

declare -a TARGETS=()

usage() {
    cat <<'EOF'
Usage: scripts/build-release.sh [options]

Options:
  --target <triple>   Build one release target. Can be passed multiple times.
  --version <value>   Release version string used in manifests.
  --dist-dir <path>   Output directory for release artifacts.
  --zig <path>        Zig executable to use.

Supported targets:
  x86_64-linux-gnu
  x86_64-linux-musl
  aarch64-linux-gnu
  aarch64-linux-musl
EOF
}

detect_host_target() {
    local arch libc

    case "$(uname -m)" in
        x86_64|amd64)
            arch="x86_64"
            ;;
        aarch64|arm64)
            arch="aarch64"
            ;;
        *)
            echo "Unsupported host architecture: $(uname -m)" >&2
            exit 1
            ;;
    esac

    if command -v ldd >/dev/null 2>&1; then
        if ldd --version 2>&1 | grep -qi musl; then
            libc="musl"
        elif ldd /bin/sh 2>&1 | grep -qi musl; then
            libc="musl"
        fi
    fi

    if [[ -z "${libc:-}" ]] && command -v getconf >/dev/null 2>&1 && getconf GNU_LIBC_VERSION >/dev/null 2>&1; then
        libc="gnu"
    elif [[ -z "${libc:-}" ]] && command -v ldd >/dev/null 2>&1 && ldd --version 2>&1 | grep -qi 'glibc\|gnu libc'; then
        libc="gnu"
    elif [[ -z "${libc:-}" ]] && ls /lib/libc.musl-* /usr/lib/libc.musl-* >/dev/null 2>&1; then
        libc="musl"
    else
        echo "Unable to detect host libc variant" >&2
        exit 1
    fi

    printf '%s-linux-%s\n' "$arch" "$libc"
}

while [[ $# -gt 0 ]]; do
    case "$1" in
        --target)
            [[ $# -ge 2 ]] || { usage; exit 1; }
            TARGETS+=("$2")
            shift 2
            ;;
        --version)
            [[ $# -ge 2 ]] || { usage; exit 1; }
            VERSION="$2"
            shift 2
            ;;
        --dist-dir)
            [[ $# -ge 2 ]] || { usage; exit 1; }
            DIST_DIR="$2"
            shift 2
            ;;
        --zig)
            [[ $# -ge 2 ]] || { usage; exit 1; }
            ZIG_BIN="$2"
            shift 2
            ;;
        -h|--help)
            usage
            exit 0
            ;;
        *)
            echo "Unknown argument: $1" >&2
            usage
            exit 1
            ;;
    esac
done

if [[ ${#TARGETS[@]} -eq 0 ]]; then
    TARGETS=("x86_64-linux-gnu")
fi

mkdir -p "$DIST_DIR"
rm -f "$DIST_DIR/weapon-scanner-checksums.txt"
mkdir -p "$ZIG_LOCAL_CACHE_DIR" "$ZIG_GLOBAL_CACHE_DIR"

HOST_TARGET="$(detect_host_target)"

for target in "${TARGETS[@]}"; do
    case "$target" in
        x86_64-linux-gnu|x86_64-linux-musl|aarch64-linux-gnu|aarch64-linux-musl)
            ;;
        *)
            echo "Unsupported release target: $target" >&2
            exit 1
            ;;
    esac

    work_dir="$DIST_DIR/.build/$target"
    asset_name="weapon-scanner-${target}.tar.gz"
    manifest_name="release.txt"

    rm -rf "$work_dir"
    mkdir -p "$work_dir"

    build_args=(
        build-exe "$ROOT_DIR/weapon_scanner.zig"
        -O ReleaseFast
        --library c
        -lbpf
        -lxdp
        --cache-dir "$ZIG_LOCAL_CACHE_DIR"
        --global-cache-dir "$ZIG_GLOBAL_CACHE_DIR"
        -femit-bin="$work_dir/weapon-scanner"
    )

    if [[ "$target" != "$HOST_TARGET" ]]; then
        build_args+=( -target "$target" )
    fi

    "$ZIG_BIN" "${build_args[@]}"

    cat > "$work_dir/$manifest_name" <<EOF
name=weapon-scanner
version=$VERSION
target=$target
EOF

    tar -C "$work_dir" -czf "$DIST_DIR/$asset_name" weapon-scanner "$manifest_name"
    sha256sum "$DIST_DIR/$asset_name" >> "$DIST_DIR/weapon-scanner-checksums.txt"
done

echo "Release artifacts written to $DIST_DIR"