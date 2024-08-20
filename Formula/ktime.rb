class Ktime < Formula
  desc "Collect Kubernetes pod event time durations"
  homepage "https://github.com/clowdhaus/ktime"
  version "v0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/ktime/releases/download/#{version}/ktime-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d79b2b07479331ec63455ea54a822cb66c236823a3291043e892975b1da21625"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/ktime/releases/download/#{version}/ktime-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "b1cfba76ea775aac8315421b47c3fe60bdafa74bed7d7314533890c6a1caa63b"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/ktime/releases/download/#{version}/ktime-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "4e73240d4e4f1cfd7489363124311438516b2b56a3b45bfb2e0e026a98c70ec1"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/ktime/releases/download/#{version}/ktime-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ad1222d62b0ade3324f2213f63004130d67071d6cbf67cd93f433e6ec100f6a"
    end
  end

  def install
    bin.install "ktime"
  end
end
