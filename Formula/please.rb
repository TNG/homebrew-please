class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://tng.github.io/please-cli/"
  version "0.0.10"
  url "https://github.com/TNG/please-cli/archive/.zip"
  sha256 "96c5063faf2c4983903e6051c966c9319c066af5318cbb81bb1346b4b2a1da9e"

  depends_on "jq"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
