class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://tng.github.io/please-cli/"
  version "0.2.2"
  url "https://github.com/TNG/please-cli/archive/refs/tags/v0.2.2.zip"
  sha256 "6f86ef292211d5f76a122e14eadac6a39d32e5fde2e8287a5e824309d02252f1"

  depends_on "jq"
  depends_on "curl"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
