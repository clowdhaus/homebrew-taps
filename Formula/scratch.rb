class Scratch < Formula
  desc "Its a thing that does nothing, really"
  homepage "https://github.com/clowdhaus/scratch"
  version "v0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/scratch/releases/download/#{version}/scratch-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "deb5ba8efaacbe705591aeba0a325973a3f6118c664b01fe22a0fd2d0621a108"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/scratch/releases/download/#{version}/scratch-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "121fe6cd8f38c7b2faf2007c32088081fc686a363a6615b97f82b2fc6982af08"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/scratch/releases/download/#{version}/scratch-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "55e676f06690db773fab639c37496f5297aa6b87f07ae64e767ff79732e52b90"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/scratch/releases/download/#{version}/scratch-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d32caf38ce94ca2d9d3c55c645e12fef97683dfa0e33c6dd66be4896e99ed0ff"
    end
  end

  def install
    bin.install "scratch"
  end
end
