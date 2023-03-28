class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.2.0-alpha2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8dae896585e6af7d23a5f2ac76d0519ffc015e19bc3192b8b991412a57e579e4"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "dd368dfb49f928b3d77fa8e3f4377425cc63cceae48275010d2065513c9d8dea"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "a1ae02e3319ea3376be74b5c69bb1284384805cb504e8a1cd077c1bb332127a0"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e0b87bce84f9646d369df00732e252b67cf9fec0b7e4a19c377538b08035b3cb"
    end
  end

  def install
    bin.install "eksup"
  end
end
