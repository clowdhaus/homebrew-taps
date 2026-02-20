class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.12.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "fcc294d237ed3419c98d01e94d22b9df923ed60d6d9644634233ba299c0221b7"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
    sha256  "c9712a11028d2c6c9ac954a0a424095caa58182fae7a29724c5a879c2b6ed4e2"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "7bb11f80868e522b0055dc46122e1e5f4d009b2088908beb59c99543e0eb7796"
  end

  if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1e17e638ba5de88d1312d66a08764b2691e7c2ad055f5c16f86b766681c8af0f"
  end

  def install
    bin.install "eksup"
  end
end
