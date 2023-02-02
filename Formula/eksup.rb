class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.1.1-alpha"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7e905319c5526cb8bd79a7253dbd3b46ce3d7d5af35ed1517a00d5edef4b2bd6"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "4008884ac2160e8f52cd1b013e792237433ccced4e6980b7158ca9201179e080"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "0dedee5ca4f756da5d9eda9f524dd57412a6957a45d1fd46bff43f59816a6c27"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "375ca81688fbcceb7ec6e4b47490a0fcbdba6c98b8c5a7264a80f685d8cbb9b9"
    end
  end

  def install
    bin.install "eksup"
  end
end
