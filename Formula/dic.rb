# typed: false
# frozen_string_literal: true

class Dic < Formula
  desc "Remove local Docker images using simple text matching"
  homepage "https://github.com/frankwiles/dic"
  license "BSD-3-Clause"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/frankwiles/dic/releases/download/v0.5.3/dic-macos-x86_64"
    sha256 "7b9104ba456397f4b15a6823344de58fad8dd924e6646ccea69c88cb0d03a358"

    def install
      bin.install "dic-macos-x86_64" => "dic"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/frankwiles/dic/releases/download/v0.5.3/dic-macos-aarch64"
    sha256 "956174fd55aaad21353277b76c7e3bde5fb5ad5dbf29796dffee0c730b98285e"

    def install
      bin.install "dic-macos-aarch64" => "dic"
    end
  end

  test do
    system bin/"dic", "--version"
  end
end
