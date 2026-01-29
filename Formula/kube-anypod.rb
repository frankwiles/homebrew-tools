# typed: false
# frozen_string_literal: true

class KubeAnypod < Formula
  desc "Return the name of any pod from a given Deployment, StatefulSet, or DaemonSet"
  homepage "https://github.com/frankwiles/kube-anypod"
  version "0.3.0"
  license "BSD-3-Clause"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/frankwiles/kube-anypod/releases/download/v0.3.0/anypod-macos-x86_64"
    sha256 "bd27d0a281d686bfba49c367b654380618fa6c26b8cab7ea631eb7f534971c22"

    def install
      bin.install "anypod-macos-x86_64" => "anypod"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/frankwiles/kube-anypod/releases/download/v0.3.0/anypod-macos-aarch64"
    sha256 "c640bf0bf2845ebd38093eaf28b76dcc1679fe99a0a43a94c07585c0a7f872a9"

    def install
      bin.install "anypod-macos-aarch64" => "anypod"
    end
  end

  test do
    system "#{bin}/anypod", "--help"
  end
end
