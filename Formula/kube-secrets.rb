# typed: false
# frozen_string_literal: true

class KubeSecrets < Formula
  desc "Rust command line utility to quickly display useful secrets in a Kubernetes namespace"
  homepage "https://github.com/frankwiles/kube-secrets"
  version "0.7.0"
  license "BSD-3-Clause"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/frankwiles/kube-secrets/releases/download/v0.7.0/secrets-macos-x86_64"
    sha256 "2bf9662a142bc0732372ded1891f8ca0d34ada0c1918fd15f7e4a6e0e45f849f"

    def install
      bin.install "secrets-macos-x86_64" => "secrets"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/frankwiles/kube-secrets/releases/download/v0.7.0/secrets-macos-aarch64"
    sha256 "2c4e7f9014db1978831c50d897b719ce94b4255f3e408935de072ed4b59143a9"

    def install
      bin.install "secrets-macos-aarch64" => "secrets"
    end
  end

  test do
    system "#{bin}/secrets", "--version"
  end
end
