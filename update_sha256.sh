#!/usr/bin/env bash

set -e

if [ $# -lt 2 ]; then
  echo "Usage: $(basename $0) <TAP> <VERSION>" >&2
  exit 1
fi
TAP="$1"
VERSION="$2"

if [ $TAP == "eksup" ]; then
  DESC="A CLI to aid in upgrading Amazon EKS clusters"
elif [ $TAP == "cookiecluster" ]; then
  DESC="Stamping out clusters like its 1999"
elif [ $TAP == "ktime" ]; then
  DESC="Collect Kubernetes pod event time durations"
else
  DESC""
fi

# MacOS - arm
tripple="aarch64-apple-darwin"
url="https://github.com/clowdhaus/${TAP}/releases/download/${VERSION}/${TAP}-${VERSION}-${tripple}.tar.gz"
sha=$(curl -sfSL $url | sha256sum | cut -f 1 -d " " | xargs)
macos_arm=$sha

# MacOS - x86_64
tripple="x86_64-apple-darwin"
url="https://github.com/clowdhaus/${TAP}/releases/download/${VERSION}/${TAP}-${VERSION}-${tripple}.tar.gz"
sha=$(curl -sfSL $url | sha256sum | cut -f 1 -d " " | xargs)
macos_x86=$sha

# Linux - arm
tripple="arm-unknown-linux-gnueabihf"
url="https://github.com/clowdhaus/${TAP}/releases/download/${VERSION}/${TAP}-${VERSION}-${tripple}.tar.gz"
sha=$(curl -sfSL $url | sha256sum | cut -f 1 -d " " | xargs)
linux_arm=$sha

# Linux - x86_64
tripple="x86_64-unknown-linux-musl"
url="https://github.com/clowdhaus/${TAP}/releases/download/${VERSION}/${TAP}-${VERSION}-${tripple}.tar.gz"
sha=$(curl -sfSL $url | sha256sum | cut -f 1 -d " " | xargs)
linux_x86=$sha

cat <<EOT > Formula/${TAP}.rb
class ${TAP^} < Formula
  desc "${DESC}"
  homepage "https://github.com/clowdhaus/${TAP}"
  version "${VERSION}"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/${TAP}/releases/download/#{version}/${TAP}-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "${macos_arm}"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/${TAP}/releases/download/#{version}/${TAP}-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "${macos_x86}"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/${TAP}/releases/download/#{version}/${TAP}-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "${linux_arm}"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/${TAP}/releases/download/#{version}/${TAP}-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "${linux_x86}"
    end
  end

  def install
    bin.install "${TAP}"
  end
end
EOT
