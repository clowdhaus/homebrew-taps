class Cookiecluster < Formula
  desc "Stamping out clusters like its 1999"
  homepage "https://github.com/clowdhaus/cookiecluster"
  version "v0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "53cbe3b9f0ed3fced5e38fe37251c13df585b501e9011fcf2b8aaa04ccf08ad0"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "854487ee6ec4bd65cbd9ae906e281f9ac5e54b40948a80079a22a4b452c24271"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "7c9357c4001a0fa10e5f26747b8a699c035cb5dca46bd564f7e96216eb7604f1"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/cookiecluster/releases/download/#{version}/cookiecluster-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "92b37a3cdac3f188480e73bca6eeae955d479ce410b95b77170a43830f89d48e"
    end
  end

  def install
    bin.install "cookiecluster"
  end
end
