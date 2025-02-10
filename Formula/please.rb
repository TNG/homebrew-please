class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://tng.github.io/please-cli/"
  version "0.4.2"
  url "https://github.com/TNG/please-cli/archive/refs/tags/v0.4.2.zip"
  sha256 "87c11f87d3c14ed9a16b742ed060a8f58e2b26eedd2991bc48fb444131800e81"

  depends_on "jq"
  depends_on "curl"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
