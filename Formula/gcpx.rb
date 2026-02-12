# typed: false
# frozen_string_literal: true

class Gcpx < Formula
  desc "GCP context switcher - manage multiple gcloud accounts with instant ADC switching"
  homepage "https://github.com/andres-pcg/gcpx"
  license "MIT"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-macos-aarch64"
      sha256 "55052d5455908a646a0510f3efeb166b5d6e83da672160abae84840b9d2a32ba"

      def install
        bin.install "gcpx-macos-aarch64" => "gcpx"
      end
    else
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-macos-x86_64"
      sha256 "a2b34d93e344a83e83c70e7af8690772e0a6b19b357104c84413cd821a2e297a"

      def install
        bin.install "gcpx-macos-x86_64" => "gcpx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-linux-aarch64"
      sha256 "f7566c90d60cece2a5106b4d7fa12ea123f594bee5bcbc6a2f7b0ad5a7587535"

      def install
        bin.install "gcpx-linux-aarch64" => "gcpx"
      end
    else
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-linux-x86_64"
      sha256 "f66fb7a7ed881b723040f78447af82ec69cbe98021bec47943d7801f0d43ed23"

      def install
        bin.install "gcpx-linux-x86_64" => "gcpx"
      end
    end
  end

  test do
    assert_match "gcpx", shell_output("#{bin}/gcpx --version")
  end
end
