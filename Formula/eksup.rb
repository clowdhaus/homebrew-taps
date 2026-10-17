class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "0.15.1"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/eksup/releases/download/v#{version}/eksup-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "18c5ba36de05f50c8289a2024b52b868a5f98a2ca51b66f3b81b406a6f3a4f6e"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/clowdhaus/eksup/releases/download/v#{version}/eksup-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "cdc24b3c07a260d95f4a84c10c2a0a2d6aa9b1bb830a578a5455301af265b894"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/eksup/releases/download/v#{version}/eksup-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "828e45edec8a7694b9f52e6c9829b4ed0ad67cafc34ec5bcb518f86e2007574f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/clowdhaus/eksup/releases/download/v#{version}/eksup-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "829b4ff1e9631c3c9d8486a736368c5d2ef794a754308793afe6375122419b0b"
  end

  def install
    bin.install "eksup"
    bash_completion.install "completions/eksup.bash" => "eksup"
    zsh_completion.install "completions/_eksup"
    fish_completion.install "completions/eksup.fish"
    man1.install "man/eksup.1"
  end
end
