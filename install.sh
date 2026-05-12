#!/usr/bin/env sh

set -eu

REPO="${ATT_XDP_FUNNY_REPO:-putin-lgtm/att-xdp-funny}"
INSTALL_DIR="${ATT_XDP_FUNNY_INSTALL_DIR:-/usr/local/bin}"
VERSION="${ATT_XDP_FUNNY_VERSION:-latest}"
BIN_NAME="weapon-scanner"
API_BASE="https://api.github.com/repos/${REPO}"

log() {
    printf '%s\n' "$*"
}

warn() {
    printf 'warning: %s\n' "$*" >&2
}

die() {
    printf 'error: %s\n' "$*" >&2
    exit 1
}

need_cmd() {
    command -v "$1" >/dev/null 2>&1 || die "missing required command: $1"
}

detect_arch() {
    case "$(uname -m)" in
        x86_64|amd64)
            printf 'x86_64\n'
            ;;
        aarch64|arm64)
            printf 'aarch64\n'
            ;;
        *)
            die "unsupported CPU architecture: $(uname -m)"
            ;;
    esac
}

detect_libc() {
    if command -v ldd >/dev/null 2>&1; then
        if ldd --version 2>&1 | grep -qi musl; then
            printf 'musl\n'
            return 0
        fi
        if ldd --version 2>&1 | grep -qi 'glibc\|gnu libc'; then
            printf 'gnu\n'
            return 0
        fi
    fi

    if command -v getconf >/dev/null 2>&1 && getconf GNU_LIBC_VERSION >/dev/null 2>&1; then
        printf 'gnu\n'
        return 0
    fi

    if ls /lib/libc.musl-* >/dev/null 2>&1 || ls /usr/lib/libc.musl-* >/dev/null 2>&1; then
        printf 'musl\n'
        return 0
    fi

    die "unable to detect libc variant (glibc or musl)"
}

resolve_version() {
    if [ "$VERSION" != "latest" ]; then
        printf '%s\n' "$VERSION"
        return 0
    fi

    need_cmd curl
    curl -fsSL "${API_BASE}/releases/latest" | sed -n 's/.*"tag_name": *"\([^"]*\)".*/\1/p' | head -n 1
}

run_install() {
    if [ -w "$INSTALL_DIR" ]; then
        install -m 0755 "$1" "$INSTALL_DIR/$BIN_NAME"
    elif command -v sudo >/dev/null 2>&1; then
        sudo install -m 0755 "$1" "$INSTALL_DIR/$BIN_NAME"
    else
        die "install dir ${INSTALL_DIR} is not writable and sudo is unavailable"
    fi
}

check_runtime_deps() {
    target_path="$INSTALL_DIR/$BIN_NAME"

    if command -v ldd >/dev/null 2>&1; then
        missing_libs="$(ldd "$target_path" 2>/dev/null | awk '/not found/ { print $1 }' || true)"
        if [ -n "$missing_libs" ]; then
            warn "missing shared libraries detected: $(printf '%s' "$missing_libs" | tr '\n' ' ')"
        fi
    fi

    for tool in ip ethtool clang bpftool; do
        if ! command -v "$tool" >/dev/null 2>&1; then
            warn "optional runtime tool not found in PATH: $tool"
        fi
    done
}

main() {
    [ "$(uname -s)" = "Linux" ] || die "weapon-scanner installer currently supports Linux only"

    need_cmd curl
    need_cmd tar
    need_cmd mktemp
    need_cmd install

    arch="$(detect_arch)"
    libc_variant="$(detect_libc)"
    resolved_version="$(resolve_version)"
    [ -n "$resolved_version" ] || die "failed to resolve a GitHub release version"

    asset="weapon-scanner-${arch}-linux-${libc_variant}.tar.gz"
    checksums_asset="weapon-scanner-checksums.txt"
    download_base="https://github.com/${REPO}/releases/download/${resolved_version}"

    tmp_dir="$(mktemp -d)"
    trap 'rm -rf "$tmp_dir"' EXIT INT TERM

    archive_path="$tmp_dir/$asset"
    checksums_path="$tmp_dir/$checksums_asset"

    log "Installing ${BIN_NAME} ${resolved_version} for ${arch}/${libc_variant}"
    curl -fsSL "${download_base}/${asset}" -o "$archive_path"

    if curl -fsSL "${download_base}/${checksums_asset}" -o "$checksums_path"; then
        if command -v sha256sum >/dev/null 2>&1; then
            (cd "$tmp_dir" && sha256sum -c "$checksums_asset" --ignore-missing)
        else
            warn "sha256sum not found; skipped checksum verification"
        fi
    else
        warn "checksum file not published for this release; skipped verification"
    fi

    tar -xzf "$archive_path" -C "$tmp_dir"
    [ -f "$tmp_dir/$BIN_NAME" ] || die "release archive did not contain ${BIN_NAME}"

    run_install "$tmp_dir/$BIN_NAME"
    check_runtime_deps

    log "Installed ${BIN_NAME} to ${INSTALL_DIR}/${BIN_NAME}"
    log "Run with: sudo ${INSTALL_DIR}/${BIN_NAME}"
}

main "$@"