#!/usr/bin/env bash

set -e

if [ $# -lt 2 ]; then
  echo "Usage: $(basename $0) <TAP> <VERSION>" >&2
  exit 1
fi
TAP="$1"
VERSION="$2"

# MacOS
for arch in aarch64 x86_64; do
    url="https://github.com/clowdhaus/${TAP}/releases/download/${VERSION}/${TAP}-${VERSION}-$arch-apple-darwin.tar.gz"
    sha=$(curl -sfSL "$url" | sha256sum)
    echo "${VERSION}-$arch-apple-darwin $sha"
done

# Linux - arm
triple="arm-unknown-linux-gnueabihf"
url="https://github.com/clowdhaus/${TAP}/releases/download/${VERSION}/${TAP}-${VERSION}-${triple}.tar.gz"
sha=$(curl -sfSL "$url" | sha256sum)
echo "${VERSION}-$triple $sha"

# Linux - x86_64
triple="x86_64-unknown-linux-musl"
url="https://github.com/clowdhaus/${TAP}/releases/download/${VERSION}/${TAP}-${VERSION}-${triple}.tar.gz"
sha=$(curl -sfSL "$url" | sha256sum)
echo "${VERSION}-$triple $sha"
