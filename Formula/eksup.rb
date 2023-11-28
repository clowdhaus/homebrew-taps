class Eksup < Formula
  desc "A CLI to aid in upgrading Amazon EKS clusters"
  homepage "https://github.com/clowdhaus/eksup"
  version "v0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "39364289f2ef81caa9f32724514545d6159367651eb086dabbeee89253884fda"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-apple-darwin.tar.gz"
      sha256  "be12ff2fa4dd902bd8acadbb6f3e0fbf783b893e224830f096f203bbb7a88c9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-arm-unknown-linux-gnueabihf.tar.gz"
      sha256 "b41b4af04c12f2225eccaad6de7e6f44567cd67ddacd392c0edaa001c3f0501a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/clowdhaus/eksup/releases/download/#{version}/eksup-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aa0f8341bfe74a9e2572f912800eab89f96ffc2a527a858b35c6af051dc8669f"
    end
  end

  def install
    bin.install "eksup"
  end
end
