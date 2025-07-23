class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.11.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "040ec6c7fd207ae799ba5803beb63d13365c3bcb71a6c957bc2014e2f42d55fc"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
    sha256  "dd33c08feacec1afbee2ef3698d2f1deb87892fc213ab18af8287eaa0f907448"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "fe20326b19ff70c8ed13cee7886e9cad4753ef76802aea29c5ccedf31692dc0f"
  end

  if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4aa515a2f32e3a5d65a0707c832ce25691f38eb3153d636f8f8c1f68c096095e"
  end

  def install
    bin.install "eksup"
  end
end
