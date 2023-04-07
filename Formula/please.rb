class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://tng.github.io/please-cli/"
  version "0.1.1"
  url "https://github.com/TNG/please-cli/archive/refs/tags/v0.1.1.zip"
  sha256 "6bbdb17652d5bd02b1ae11b6dceea83f40b3082992b79c21bd606cffe9ad70e9"

  depends_on "jq"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
