class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://tng.github.io/please-cli/"
  version "0.1.2"
  url "https://github.com/TNG/please-cli/archive/refs/tags/v0.1.2.zip"
  sha256 "5e11b6161ece1a37ecf726767abc6062e794d983a9433504de4fff1fe8f9466a"

  depends_on "jq"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
