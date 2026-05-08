# typed: false
# frozen_string_literal: true

class KubeSecrets < Formula
  desc "Rust command line utility to quickly display useful secrets in a Kubernetes namespace"
  homepage "https://github.com/frankwiles/kube-secrets"
  version "0.7.1"
  license "BSD-3-Clause"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/frankwiles/kube-secrets/releases/download/v0.7.1/secrets-macos-x86_64"
    sha256 "8448578b7573aab808c39b136cfef4ff20f09aa3f9f73a9e998e8dd9602138dc"

    def install
      bin.install "secrets-macos-x86_64" => "secrets"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/frankwiles/kube-secrets/releases/download/v0.7.1/secrets-macos-aarch64"
    sha256 "a4f986b9918aa77872a02ac038f5761efa064ad81f5d319be741974e1222dbbc"

    def install
      bin.install "secrets-macos-aarch64" => "secrets"
    end
  end

  test do
    system "#{bin}/secrets", "--version"
  end
end
