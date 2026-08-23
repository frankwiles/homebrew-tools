# typed: false
# frozen_string_literal: true

class Dic < Formula
  desc "Remove local Docker images using simple text matching"
  homepage "https://github.com/frankwiles/dic"
  license "BSD-3-Clause"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/frankwiles/dic/releases/download/v0.5.0/dic-macos-x86_64"
    sha256 "1aa69a45b2d0aeba524545033167204cb5bb145cbce86e7f52100ecee914ec5d"

    def install
      bin.install "dic-macos-x86_64" => "dic"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/frankwiles/dic/releases/download/v0.5.0/dic-macos-aarch64"
    sha256 "d458ea3a57bf079532cbfb736d64005a602645149b1b92621f300840792ac912"

    def install
      bin.install "dic-macos-aarch64" => "dic"
    end
  end

  test do
    system bin/"dic", "--version"
  end
end
