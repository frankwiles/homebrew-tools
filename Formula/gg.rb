# typed: false
# frozen_string_literal: true

class Gg < Formula
  desc "A Rust CLI utility for quick git operations"
  homepage "https://github.com/frankwiles/gg"
  version "#{VERSION}"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/frankwiles/gg/releases/download/#{TAG}/gg-macos-x86_64"
    sha256 "#{INTEL_SHA}"

    def install
      bin.install "gg-macos-x86_64" => "gg"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/frankwiles/gg/releases/download/#{TAG}/gg-macos-aarch64"
    sha256 "#{ARM_SHA}"

    def install
      bin.install "gg-macos-aarch64" => "gg"
    end
  end

  test do
    system "#{bin}/gg", "--version"
  end
end
