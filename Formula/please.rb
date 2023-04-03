class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://github.com/TNG/please-cli"
  url "https://github.com/TNG/please-cli/archive/refs/tags/v1.0.0.zip"
  sha256 "288d75e1470caa3d4939e8bd495d80804ec02efa3d0ef86344419c3fac34ed4a"

  depends_on "jq"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
