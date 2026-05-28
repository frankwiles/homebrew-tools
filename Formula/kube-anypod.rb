# typed: false
# frozen_string_literal: true

class KubeAnypod < Formula
  desc "Return the name of any pod from a given Deployment, StatefulSet, or DaemonSet"
  homepage "https://github.com/frankwiles/kube-anypod"
  version "null"
  license "BSD-3-Clause"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/frankwiles/kube-anypod/releases/download/null/anypod-macos-x86_64"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

    def install
      bin.install "anypod-macos-x86_64" => "anypod"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/frankwiles/kube-anypod/releases/download/null/anypod-macos-aarch64"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

    def install
      bin.install "anypod-macos-aarch64" => "anypod"
    end
  end

  test do
    system "#{bin}/anypod", "--help"
  end
end
