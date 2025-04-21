class Cookiecluster < Formula
  desc "Stamping out clusters like its 1999"
  homepage "https://github.com/clowdhaus/cookiecluster"
  version "v0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4ed1daff5775e3d191bbddec9ead81f3518d3b34f6dad88cdbd91b26b92678f6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "c471b2e118762e50ebea3eac4c24b0bc00f4957fe32b5ae6118736c9aa7d2c82"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "c6fb8ee73e5ef1bfe54beb2301dd19388d46e95f4b0880657c884bd13105642c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2f6f1c720f19ed948a908b73196aab6a17522ca6cd7d2feb137292d1da65fbea"
    end
  end

  def install
    bin.install "cookiecluster"
  end
end
