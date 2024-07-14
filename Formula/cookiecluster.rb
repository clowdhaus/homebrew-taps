class Cookiecluster < Formula
  desc "Stamping out clusters like its 1999"
  homepage "https://github.com/clowdhaus/cookiecluster"
  version "v0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "128cb8fb5fba8c5c1c5bd2dfb7a7d3867ff7bba87c4b47212d89616085724781"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "aae96f3e4f02aa93d431a8149277ece58a3330823dee81ac841daf028bbcc8c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "10c537e30d41601635ef5b3a1da2aefe94bafd6f08342c8fa6fdc131459f2530"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1273b5ae2253c4ef2f48b1b1a08b264615fd6bb3f31f6b76e0fb899e65b484b2"
    end
  end

  def install
    bin.install "cookiecluster"
  end
end
