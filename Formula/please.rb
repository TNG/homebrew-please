class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://tng.github.io/please-cli/"
  version "0.4.0"
  url "https://github.com/TNG/please-cli/archive/refs/tags/v0.4.0.zip"
  sha256 "93434279577d70bf71ee1168bb09168acbc353a24bc782ef189f019c219de11c"

  depends_on "jq"
  depends_on "curl"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
