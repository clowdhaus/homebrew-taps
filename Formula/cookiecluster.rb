class Cookiecluster < Formula
  desc "Stamping out clusters like its 1999"
  homepage "https://github.com/clowdhaus/cookiecluster"
  version "v0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "203bfef27f11f41115fd48b6595fcea02b5fac5a4c21f997b296fd7cf368fe4a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "3828eac0499a21dae29e6e44d72445c3f260e1cd07d89ba58129b06b12e06cd5"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "a03022cca9bd50272c5a67e432b91ea671874ded98f6da57b9238aadcd9aa2b5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b98e1aa6e83b3d0c2ed423bff07558692abd95b442416563b3af6cd6a7704c3"
    end
  end

  def install
    bin.install "cookiecluster"
  end
end
