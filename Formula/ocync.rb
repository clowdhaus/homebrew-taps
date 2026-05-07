class Ocync < Formula
  desc "OCI registry sync tool"
  homepage "https://github.com/clowdhaus/ocync"
  version "0.5.1"
  license "Apache-2.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/ocync/releases/download/v#{version}/ocync-macos-arm64"
    sha256 "56abcc57f8fb267de4323cb0e87c07cd7f480d51ab45c3401495a6ed45f89423"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/clowdhaus/ocync/releases/download/v#{version}/ocync-fips-linux-amd64"
    sha256 "8bf21fc4d4bb4adc63abdd0abb76746dcaaf228fe0588a16906619f7dea42768"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/clowdhaus/ocync/releases/download/v#{version}/ocync-fips-linux-arm64"
    sha256 "8ffeccb1ef3076540a408561efde7148595670fe4413f8fc3dc73fb21beb08ff"
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
