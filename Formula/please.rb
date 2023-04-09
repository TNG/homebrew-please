class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://tng.github.io/please-cli/"
  version "0.2.1"
  url "https://github.com/TNG/please-cli/archive/refs/tags/v0.2.1.zip"
  sha256 "45da7c1fd741151bdcc322f99d6a25f1c1f8dc71d22b4e2441a74747619098a8"

  depends_on "jq"
  depends_on "curl"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
