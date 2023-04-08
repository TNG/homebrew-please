class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://tng.github.io/please-cli/"
  version "0.2.0"
  url "https://github.com/TNG/please-cli/archive/refs/tags/v0.2.0.zip"
  sha256 "29049c4ecdaf38381e0ecf9b4816f7280215c2fc0c669335114ada0d14410819"

  depends_on "jq"
  depends_on "curl"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
