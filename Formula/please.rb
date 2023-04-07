class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://tng.github.io/please-cli/"
  version "0.1.3"
  url "https://github.com/TNG/please-cli/archive/refs/tags/v0.1.3.zip"
  sha256 "127fa948bd3e9d821b6ab647b9bccd230032ce55ee5eee03bf32c4fdcff060d6"

  depends_on "jq"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
