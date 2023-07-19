class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.3.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f9132d392e15d42c0bef4add2404c0f71993ee328ae429fe0134f1dac5b4fdfd"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "e25ff0c3265f4b763fa9b7648e255791587158d11b5299fdd10a239d30520bc9"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "ae5bff5fd32a4bbe45e229237782aafc7a092f4b5568826b164876adaa3d4396"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "919dc216bd05a70bd15b4392e0d1f28d5fa252f70b2b824d3a53b8f7361f7a5e"
    end
  end

  def install
    bin.install "eksup"
  end
end
