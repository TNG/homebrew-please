class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://tng.github.io/please-cli/"
  version "0.0.8"
  url "https://github.com/TNG/please-cli/archive/refs/tags/refs/tags/v0.0.8.zip"
  sha256 ""

  depends_on "jq"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
