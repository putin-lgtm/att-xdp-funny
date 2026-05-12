# weapon-scanner release/install flow

## Asset naming

Each release publishes tarballs named like this:

- `weapon-scanner-x86_64-linux-gnu.tar.gz`
- `weapon-scanner-x86_64-linux-musl.tar.gz`
- `weapon-scanner-aarch64-linux-gnu.tar.gz`
- `weapon-scanner-aarch64-linux-musl.tar.gz`

Each tarball contains:

- `weapon-scanner`
- `release.txt`

The release also publishes `weapon-scanner-checksums.txt`.

## Installer

Install the latest release to `/usr/local/bin`:

```sh
curl -fsSL https://raw.githubusercontent.com/putin-lgtm/att-xdp-funny/main/install.sh | sh
```

Install a specific version:

```sh
ATT_XDP_FUNNY_VERSION=v0.1.0 curl -fsSL https://raw.githubusercontent.com/putin-lgtm/att-xdp-funny/main/install.sh | sh
```

Install to a custom location:

```sh
ATT_XDP_FUNNY_INSTALL_DIR="$HOME/.local/bin" curl -fsSL https://raw.githubusercontent.com/putin-lgtm/att-xdp-funny/main/install.sh | sh
```

## Release build script

Build one host-compatible release artifact locally:

```sh
./scripts/build-release.sh --version v0.1.0 --target x86_64-linux-gnu
```

Build multiple targets when the matching sysroot and libraries are available in the build environment:

```sh
./scripts/build-release.sh \
  --version v0.1.0 \
  --target x86_64-linux-gnu \
  --target x86_64-linux-musl \
  --target aarch64-linux-gnu \
  --target aarch64-linux-musl
```

## Runtime note

`weapon-scanner` still depends on system libraries such as `libbpf` and `libxdp`. The installer warns when common runtime dependencies are missing, but it does not install distro packages automatically.