class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "60ec4830b9f85ee1d5295da7e3fd4804e3a6765e811bb68928b991b88ac39a72"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "0e32e61d3f7ab0c28c38c9f96bbe220b764583d5fc23ca038c0ba600ed3c41cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "1510c1e8db3b8285a460b0c277b863f806ed44c6fd4aea7082a07172ab601590"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "67282400609130a408a80fc2941919916fd83fd1759ee70246c45a4b3212a10c"
    end
  end

  def install
    bin.install "eksup"
  end
end
