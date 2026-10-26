class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://tng.github.io/please-cli/"
  version "0.4.4"
  url "https://github.com/TNG/please-cli/archive/refs/tags/v0.4.4.zip"
  sha256 "ba229823a128b8780b1a6bcb4c0aabd6f1543ec711b88a379ca87a733d1f99fc"

  depends_on "jq"
  depends_on "curl"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
