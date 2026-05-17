class Ocync < Formula
  desc "OCI registry sync tool"
  homepage "https://github.com/clowdhaus/ocync"
  version "0.5.3"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/ocync/releases/download/v#{version}/ocync-macos-arm64"
    sha256 "634de46d4dd6aefa7f718d218a654828aa13dbe0a2423dceeebfbdb959aa3963"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/clowdhaus/ocync/releases/download/v#{version}/ocync-fips-linux-amd64"
    sha256 "9843ea06264b62c3be4b3c04d7d9fffa13dea6869cd149c7503d3de93fc805ce"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/ocync/releases/download/v#{version}/ocync-fips-linux-arm64"
    sha256 "64c7db47a99f303af5581d9de42ed0b80f2ce864be9d547e8a23eb719490e396"
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
