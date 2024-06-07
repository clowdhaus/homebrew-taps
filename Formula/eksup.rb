class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "bebd7847fb30e10f0c598c7f88d4ae8a8113c329514dac31409123f99869378f"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "7293782448e7d8c407a5b01206d575ac665bf4bf3a8a35ae1a6a6a98343de320"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "8e432a138f9e5b170be0c5dd418c45825e422becb0507b4632a6ab80142778ab"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b2f33ed05f83bee781812ec9208cef5a03645477752ca1caed8b64cea108ed14"
    end
  end

  def install
    bin.install "eksup"
  end
end
