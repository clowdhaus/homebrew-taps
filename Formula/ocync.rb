class Ocync < Formula
  desc "OCI registry sync tool"
  homepage "https://github.com/clowdhaus/ocync"
  version "0.5.0"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/ocync/releases/download/v#{version}/ocync-macos-arm64"
    sha256 "9ca78ad54ae2b90ed75082b07dd02ad533276e643db34b58a703816e2253d628"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/clowdhaus/ocync/releases/download/v#{version}/ocync-fips-linux-amd64"
    sha256 "21fa3e6a587a5c363a2352fdc40249d944b86682f186df335932504f09712be3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/ocync/releases/download/v#{version}/ocync-fips-linux-arm64"
    sha256 "a03b82ebd690f193d85e2809b06e41c973bd882c3b5c8f9329fb09d6b515f73d"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "ocync-macos-arm64" => "ocync"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "ocync-fips-linux-amd64" => "ocync"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "ocync-fips-linux-arm64" => "ocync"
    end
  end

  def caveats
    <<~CAVEATS
      Linux builds use FIPS-validated AWS-LC.
    CAVEATS
  end
end
