# typed: false
# frozen_string_literal: true

class Gg < Formula
  desc "A Rust CLI utility for quick git operations"
  homepage "https://github.com/frankwiles/gg"
  version "0.3.0"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/frankwiles/gg/releases/download/v0.3.0/gg-macos-x86_64"
    sha256 "691dd8c994ced40cbee628d78ef16b74ef4ecef52413e5bc5a1e710d41a4dcab"

    def install
      bin.install "gg-macos-x86_64" => "gg"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/frankwiles/gg/releases/download/v0.3.0/gg-macos-aarch64"
    sha256 "eb5a1af8afa62acff6692c0b6087c6a0c099f2a9964428006bde907bbfd353ec"

    def install
      bin.install "gg-macos-aarch64" => "gg"
    end
  end

  test do
    system "#{bin}/gg", "--version"
  end
end
