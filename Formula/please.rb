class Please < Formula
  desc "An AI helper script to create CLI commands"
  homepage "https://tng.github.io/please-cli/"
  version "0.4.3"
  url "https://github.com/TNG/please-cli/archive/refs/tags/v0.4.3.zip"
  sha256 "8777611c7826ea9f228ce1d0338c6d93ee53a749b6d1d5b5edbdc1ecb0d8feba"

  depends_on "jq"
  depends_on "curl"

  def install
    bin.install "please.sh" => "please"
  end

  test do
    system "#{bin}/please", "--help"
  end
end
