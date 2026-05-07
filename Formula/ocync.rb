class Ocync < Formula
  desc "OCI registry sync tool"
  homepage "https://github.com/clowdhaus/ocync"
  version "0.5.2"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/ocync/releases/download/v#{version}/ocync-macos-arm64"
    sha256 "e958972d544fdffc2d810ea3d0a7ebf00118d5db225641101378891e0de7d713"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/clowdhaus/ocync/releases/download/v#{version}/ocync-fips-linux-amd64"
    sha256 "ed537a872b725cdc0414f980fc12f25d51e5a005fd67ce8ce2a82459ee63c9bf"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/ocync/releases/download/v#{version}/ocync-fips-linux-arm64"
    sha256 "c4739a84aeef289e13bcea383ce88a418520b764a6462d4993a3bd7330e20fa3"
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
