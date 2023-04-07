class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://tng.github.io/please-cli/"
  version "0.1.0"
  url "https://github.com/TNG/please-cli/archive/refs/tags/v0.1.0.zip"
  sha256 "d8fad96ba462d434d5de678e29d15c6c561dd8ead3f8f08080ebe9f453ef8a7f"

  depends_on "jq"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
