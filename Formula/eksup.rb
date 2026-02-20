class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.13.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "3df0142d592fe85788bc337c46002aef903bcfb3f0de606b9c98bbfe64e401da"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
    sha256  "19fed75e6d0988ec0701bc82539c3bfc99b327b8ec877a81d034b11706b6ff61"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "db1ea67a421c3b9ff0370deb7c1cbc5a621259d988a080b95f91b82b8cfeec1f"
  end

  if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2522919bc451b3872562fcc91518ac807752aa7e9879b5335a96695d3e920138"
  end

  def install
    bin.install "eksup"
  end
end
