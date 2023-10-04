class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "cc2c4443e28bc7b4e6e0312f3f48eb4d695d7d260accb0acd52e4b1da3daaa35"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "b362606899d9184743433e6e9da36fdf7dd7a21b83483523bf9ae54f6d346ea5"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "84a5f9c5d6cd0e89a23e73d87292d9986c2599701ebd4ab4555b46f78be291ed"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bab422e828f16c363be0a94c526c9458e5fc0637616629ba7b56ef70c7772ed8"
    end
  end

  def install
    bin.install "eksup"
  end
end
