class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.11.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "b189aff9b5bcba1b44dab68ef2825dbcfc16bdfe5d5cf735e50386c076665891"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
    sha256  "5d702634ce3839acfd04bc327ad796810d57f5003b3099c142f64060aa5d9ad9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "3d6ecaed034587852150e1d5a8dbd49c1d1be06781b8ecc724acda17a091c5fe"
  end

  if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf469aa550295f5194f5c7233f51a5fae61e08936d573f45e97a5893fdef897c"
  end

  def install
    bin.install "eksup"
  end
end
