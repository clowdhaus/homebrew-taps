class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.2.0-alpha"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c056cee856bd9334c041d8353489b64375fc1620cd4d31c37d67fe967dcd3c3d"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "f3ab0acbc0e44979401438990b06d2edcba8d4a63d4a1511863fd0dc1fdeea76"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "f631eca7ddff7a7b3cd55d1461d887dcfaaeb9e745c0d48862bf68554b4dddf3"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e932aceb4cc96c19dad9fa5113865b5d849c7db7a5125f38b1fa0d6c273dbbec"
    end
  end

  def install
    bin.install "eksup"
  end
end
