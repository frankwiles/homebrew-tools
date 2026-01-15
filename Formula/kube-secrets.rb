# typed: false
# frozen_string_literal: true

class KubeSecrets < Formula
  desc "Rust command line utility to quickly display useful secrets in a Kubernetes namespace"
  homepage "https://github.com/frankwiles/kube-secrets"
  version "0.6.0"
  license "BSD-3-Clause"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/frankwiles/kube-secrets/releases/download/v0.6.0/secrets-macos-x86_64"
    sha256 "153afb8f5f6ae15d188fde13d7911d4f912f06969351538f37959c5f9375d83a"

    def install
      bin.install "secrets-macos-x86_64" => "secrets"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/frankwiles/kube-secrets/releases/download/v0.6.0/secrets-macos-aarch64"
    sha256 "14452dea2460bd3bca9eea9619762f82888cf9bdc675bbd50b9bcd19966bc2dc"

    def install
      bin.install "secrets-macos-aarch64" => "secrets"
    end
  end

  test do
    system "#{bin}/secrets", "--version"
  end
end
