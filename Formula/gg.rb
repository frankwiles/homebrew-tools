# typed: false
# frozen_string_literal: true

class Gg < Formula
  desc "A Rust CLI utility for quick git operations"
  homepage "https://github.com/frankwiles/gg"
  version "0.2.8"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/frankwiles/gg/releases/download/v0.2.8/gg-macos-x86_64"
    sha256 "2ae5450490290cb9aa85096eb9d6d39e4e2089c2261d5f30b882d77ee6e6c4cd"

    def install
      bin.install "gg-macos-x86_64" => "gg"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/frankwiles/gg/releases/download/v0.2.8/gg-macos-aarch64"
    sha256 "b8eb8cdeac4357c289f4a29437d385ae3d736f01ed2540e8da87ec0ec3acbc85"

    def install
      bin.install "gg-macos-aarch64" => "gg"
    end
  end

  test do
    system "#{bin}/gg", "--version"
  end
end
