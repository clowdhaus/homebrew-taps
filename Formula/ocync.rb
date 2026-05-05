class Ocync < Formula
  desc "OCI registry sync tool"
  homepage "https://github.com/clowdhaus/ocync"
  version "0.4.0"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/ocync/releases/download/v#{version}/ocync-macos-arm64"
    sha256 "c6b92b1a713826f84fd21e3c268dff3153f5b4a7181a7c796e46cd5eaa1c5a44"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/clowdhaus/ocync/releases/download/v#{version}/ocync-fips-linux-amd64"
    sha256 "08d971dada20643f7ffe5454622f5f8df698409f2a3ac29267da77f7637e1b9a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/ocync/releases/download/v#{version}/ocync-fips-linux-arm64"
    sha256 "ddc5e8649c53c4fd7cb64fbd0c65a264c1e6f4e79a9a23a08b9af11021dad5df"
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
