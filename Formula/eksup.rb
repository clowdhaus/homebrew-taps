class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "33d98c7d6de90d0a3b2a2db96b7cbdf06158b525b7ae26cdeccb9afe70be528e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "f85f25f5fd50e60d5dd5e6f35c92c353c6b7107d2ad7f1f91519651d34223e15"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "aff9a0de477adfeb6a1add45994fb6e5aac2907de71a5007f41465ccfdf1443f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f314a41dd65390b8f87ac90998a1f52876d30fb6a1eaf2f1da24f2e07fdabf39"
    end
  end

  def install
    bin.install "eksup"
  end
end
