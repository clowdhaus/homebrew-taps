class Cookiecluster < Formula
  desc "Stamping out clusters like its 1999"
  homepage "https://github.com/clowdhaus/cookiecluster"
  version "v0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7ef424572cef3d8ec509b0479267b5fbeff9945b5575bc20a0c178862dfa7ad4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "b82ecd9c7a79296c22678554c43a76a3337e92cfe1cec0d22d44b9d4edd3ba85"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "680a635091397b13290e2f69a399cd3d31a3b8dfaae9282191e17e1755212463"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "94bae2364cc071059a0e8adcd6bdbbca5e51c8df200611f3f417c73705a169b9"
    end
  end

  def install
    bin.install "cookiecluster"
  end
end
