class Cookiecluster < Formula
  desc "Stamping out clusters like its 1999"
  homepage "https://github.com/clowdhaus/cookiecluster"
  version "v0.14.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "ae3933326d127551b80ce316c27ebb455834f0f484b2d0d8a3e30af2788e1394"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-apple-darwin.tar.gz"
    sha256  "388895239116763a4365d53563f8cdaa73e5eb709bfee3b7354f43b90caf90e7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "6b0b5bc5bb75b14db01ccac8b7b1b3defa96ea5e4b2fd8670da2cd61ab6138c7"
  end

  if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "07ea8c651fe4f890083c295298e4983991655bec4ef461c08924722284a170a7"
  end

  def install
    bin.install "cookiecluster"
  end
end
