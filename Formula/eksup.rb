class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fdfbfb2fc810d19436c7ee3d969595c38fe5159c9de80f0ec9411c57954142cb"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "54b948a31e0ca3a9620f0283d906f4c83ccc41cf8679ae28f16d4637e380f337"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "5965ae874070b46b03c8bde466eebaa05340b329b86f790746c5e76d13790174"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5c7ef62b2b67ce3beea8926c491b1612af2bcee0745518effd6e462a1a1f69fc"
    end
  end

  def install
    bin.install "eksup"
  end
end
