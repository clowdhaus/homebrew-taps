class Cookiecluster < Formula
  desc "Stamping out clusters like its 1999"
  homepage "https://github.com/clowdhaus/cookiecluster"
  version "v0.13.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "b91cd30df27022f3603f5d26c133e478e40cffcd5158dea5cb460306b379445f"
  end

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-apple-darwin.tar.gz"
    sha256  "8ac30d5045498ea6bc1e9331bbc7f1241b72f2a3d20b88e7e04c7d2a5479e7a7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "3dcaf80932ed48dd0af50253fdde4b05d21f964c9e8e7836bb9e94620a68d1b5"
  end

  if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf5f5ca5093a6fb2e4f5d9f594a0d5f6dd8e1c46f364bf484c7302404a460876"
  end

  def install
    bin.install "cookiecluster"
  end
end
