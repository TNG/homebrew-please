class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://tng.github.io/please-cli/"
  version "0.3.0"
  url "https://github.com/TNG/please-cli/archive/refs/tags/v0.3.0.zip"
  sha256 "27c63dcf18b99f55bd3cc1baf7950baceade5697fe84a14d9ab3f7d0644bbfe6"

  depends_on "jq"
  depends_on "curl"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
