class Cookiecluster < Formula
  desc "Stamping out clusters like its 1999"
  homepage "https://github.com/clowdhaus/cookiecluster"
  version "v0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "347ac6af26d1c80d54f1be6f925dff2f79d6df12f9da7d3abaaddda217de9fa4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "8e07417b6a6a351ff4fec8a573fdb3ca90d964db1cee9fa1fb8d6579aa8a1871"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "c566f19f24520095dd25921ef9517803bd17459d73f0425a447c1d029455a484"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d3ea39299a2e096c036e96fe2cad57b5f5bb8bc898f575908d98e5393b026f46"
    end
  end

  def install
    bin.install "cookiecluster"
  end
end
