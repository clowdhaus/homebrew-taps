class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.2.0-alpha4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "86f8957260b99045af638cdede31a2595b0215bd22daad80fd5d873f0ee9c1ec"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "3724d0270dcc107d6d775af07832b0418321b5f527b7efbcaddef4b1d8cca85a"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "74d62f81115b52f89a8560aa025069508d1f13f60ac6da409e55ff772102fc37"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0ff025bba2c9dc6220b3ae9d0e6e0c811967b2fe0c80c7020b11c129eafe7479"
    end
  end

  def install
    bin.install "eksup"
  end
end
