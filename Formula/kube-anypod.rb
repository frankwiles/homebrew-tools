# typed: false
# frozen_string_literal: true

class KubeAnypod < Formula
  desc "Return the name of any pod from a given Deployment, StatefulSet, or DaemonSet"
  homepage "https://github.com/frankwiles/kube-anypod"
  version "0.2.0"
  license "BSD-3-Clause"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/frankwiles/kube-anypod/releases/download/v0.2.0/anypod-macos-x86_64"
    sha256 "f79ec3a5dcbe29d55dffde8d16ccae2ebe8b2181a61c6b970ef10f43b8bdb5c0"

    def install
      bin.install "anypod-macos-x86_64" => "anypod"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/frankwiles/kube-anypod/releases/download/v0.2.0/anypod-macos-aarch64"
    sha256 "8405432faa59ec42bd9a924dc77a4e0d2b719a229b911697aeca89dbf16d8c12"

    def install
      bin.install "anypod-macos-aarch64" => "anypod"
    end
  end

  test do
    system "#{bin}/anypod", "--help"
  end
end
