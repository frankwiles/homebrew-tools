# typed: false
# frozen_string_literal: true

class Dic < Formula
  desc "Remove local Docker images using simple text matching"
  homepage "https://github.com/frankwiles/dic"
  license "BSD-3-Clause"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/frankwiles/dic/releases/download/v0.5.1/dic-macos-x86_64"
    sha256 "27d9616a429a315a73cb85e1989f93efcdbeb02dabc30add76d3b367054c5776"

    def install
      bin.install "dic-macos-x86_64" => "dic"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/frankwiles/dic/releases/download/v0.5.1/dic-macos-aarch64"
    sha256 "7ec6d80cd3fc19dc6bc08e3642816162a40f95c2df93abdb420e5f5a6a6797d0"

    def install
      bin.install "dic-macos-aarch64" => "dic"
    end
  end

  test do
    system bin/"dic", "--version"
  end
end
