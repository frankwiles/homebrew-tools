# typed: false
# frozen_string_literal: true

class KubeSecrets < Formula
  desc "Rust command line utility to quickly display useful secrets in a Kubernetes namespace"
  homepage "https://github.com/frankwiles/kube-secrets"
  version "null"
  license "BSD-3-Clause"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/frankwiles/kube-secrets/releases/download/null/secrets-macos-x86_64"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

    def install
      bin.install "secrets-macos-x86_64" => "secrets"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/frankwiles/kube-secrets/releases/download/null/secrets-macos-aarch64"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

    def install
      bin.install "secrets-macos-aarch64" => "secrets"
    end
  end

  test do
    system "#{bin}/secrets", "--version"
  end
end
