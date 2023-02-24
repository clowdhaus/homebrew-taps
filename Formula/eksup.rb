class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.2.0-alpha1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b2a266f03272307657805f97e332b70b125239025182b49b01fcc8ed6d621da9"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "44fe2ceb2e6429c348356953c3287fc362f21553f47c9c5a155901a285003bd6"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "be17888e22218510060eb4334c6b14f4aa51a1381f61fcc8ad5e95e2a4d2eb9c"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1fcf17ea59b762c26cc77184aa21cc79c9c8b1d5cc1f40334cc7f28f4d42fdb9"
    end
  end

  def install
    bin.install "eksup"
  end
end
