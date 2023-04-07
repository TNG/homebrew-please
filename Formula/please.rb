class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://tng.github.io/please-cli/"
  version "0.0.11"
  url "https://github.com/TNG/please-cli/archive/refs/tags/v0.0.11.zip"
  sha256 "2d2b17085c0d8f273a3649bf28ee75750d2970b2f1e09c875ad22658c4e0bf94"

  depends_on "jq"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
