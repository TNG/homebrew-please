class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://tng.github.io/please-cli/"
  version "0.4.1"
  url "https://github.com/TNG/please-cli/archive/refs/tags/v0.4.1.zip"
  sha256 "8bb8338207ce3b40da1f8e7447fb40683a0d1006a7fd2ffe120b3f54a85d5ff4"

  depends_on "jq"
  depends_on "curl"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
