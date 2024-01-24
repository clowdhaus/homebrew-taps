class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "05f101b6c120f566ba3077c9c9e682ee30b1647d5d62b5414b751ba4c9e57439"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "eef7b576bc7dda1e3b4ddd62006480ca17e980af6586adaedf7b4568ee01e897"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "588c7ec83bcf6754ef84af1c9582995a9fa031f5c5e504f3e398e14396d9b305"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4abcc6cf08680ff6f89c49b45835cdbbccbb6cb1e53f60e8fb16d24408c57d27"
    end
  end

  def install
    bin.install "eksup"
  end
end
