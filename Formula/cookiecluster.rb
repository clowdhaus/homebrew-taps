class Cookiecluster < Formula
  desc "Stamping out clusters like its 1999"
  homepage "https://github.com/clowdhaus/cookiecluster"
  version "v0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1800bb5eac65f1dded8a45d974df62f33de1a221d6839d3ad0a581e50288dee4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "bb140757490040f664604efd68a19205d8340e06230f9251d18ba0c0ffea02cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "fc02c50fc312da939fdbca00da0c9f3c69297e3b09bafc85578fcf823738e4f6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9aedcc205221b16fef11240d9c980d16ea76287fa6659f8a2ee363ef88ea8fe0"
    end
  end

  def install
    bin.install "cookiecluster"
  end
end
