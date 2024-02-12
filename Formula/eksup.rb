class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "6811beaa95345fd1fb64ec988bbe194f35ce215cb54780d1c0a80d18dcf14215"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "c15b8f8f23f4e54f6ef214616e5518890d602deca9d825d1f22c45e460974236"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "6b02c6e6ccb8cf53feebaaf953c0c7eceaab3d3b9e44ced24808bb0f0ebf32bc"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f5bf0e9b9f41c05bdfaefe4fbff1c2bb74244bb968b3c1c2e97ce8274d7aab79"
    end
  end

  def install
    bin.install "eksup"
  end
end
