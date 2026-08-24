# typed: false
# frozen_string_literal: true

class Gg < Formula
  desc "A Rust CLI utility for quick git operations"
  homepage "https://github.com/frankwiles/gg"
  version "0.4.0"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/frankwiles/gg/releases/download/v0.4.0/gg-macos-x86_64"
    sha256 "58c418d6fe61f507c4c1744582364a056a0cbc939c428de0edc23bde740ce286"

    def install
      bin.install "gg-macos-x86_64" => "gg"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/frankwiles/gg/releases/download/v0.4.0/gg-macos-aarch64"
    sha256 "200dc44ba07f4ca22c7954d606bbca9b02fcb6c0bb2052f3bd9e06c2225edc76"

    def install
      bin.install "gg-macos-aarch64" => "gg"
    end
  end

  test do
    system "#{bin}/gg", "--version"
  end
end
