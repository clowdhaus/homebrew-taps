class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "bf853b76e64636eaf347bac57589399611a9764fcb965f5168a5aff51117bc07"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "02f3813e268739dabf4a501f63d33b6c05db4e391be1dc7051ac4828c77b0185"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "68f53018279d5d3e76b24c86846cf6aa3076c0aaf66d4fc24ba82e5ce6301f94"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eda96f3889ba83df7549bd52d9aeedb6acd11f649674c8bf2ed6cfcc4ad8583c"
    end
  end

  def install
    bin.install "eksup"
  end
end
