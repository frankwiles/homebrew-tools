# typed: false
# frozen_string_literal: true

class Gg < Formula
  desc "A Rust CLI utility for quick git operations"
  homepage "https://github.com/frankwiles/gg"
  version "0.4.1"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/frankwiles/gg/releases/download/v0.4.1/gg-macos-x86_64"
    sha256 "3781fa8def4e6cd25d446afc81f7f7f72ae9b134a5d1ea0466dd7116f3e4f6a3"

    def install
      bin.install "gg-macos-x86_64" => "gg"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/frankwiles/gg/releases/download/v0.4.1/gg-macos-aarch64"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

    def install
      bin.install "gg-macos-aarch64" => "gg"
    end
  end

  test do
    system "#{bin}/gg", "--version"
  end
end
