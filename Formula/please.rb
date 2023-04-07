class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://tng.github.io/please-cli/"
  version "0.0.1"
  url "https://github.com/TNG/please-cli/archive/refs/tags/v0.0.1.zip"
  sha256 "4d96cbc408eb847ba0f07c3b5882b3136daf41bee9058479a55d5655135c4c84"

  depends_on "jq"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
