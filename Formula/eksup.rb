class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e2f500d5c8905426b333cdbfbb3ba8ff237206227a03ec3f188f0f076fa9fe78"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "dcd0f88175ec6c94ed0265d466c76185c221f47206f6c7e52faa69a8dae2a110"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "ca80dae99a388d607356656954bd74753faee2f697befa9ca6a5cf0e1f37ee1e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ce4a735212365ad1160a2e56c2f69eb3888a8ad95c991b66895d403fce8b0f2a"
    end
  end

  def install
    bin.install "eksup"
  end
end
