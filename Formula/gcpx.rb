# typed: false
# frozen_string_literal: true

class Gcpx < Formula
  desc "GCP context switcher - manage multiple gcloud accounts with instant ADC switching"
  homepage "https://github.com/andres-pcg/gcpx"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-macos-aarch64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "gcpx-macos-aarch64" => "gcpx"
      end
    else
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-macos-x86_64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "gcpx-macos-x86_64" => "gcpx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-linux-aarch64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "gcpx-linux-aarch64" => "gcpx"
      end
    else
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-linux-x86_64"
      sha256 "PLACEHOLDER"

      def install
        bin.install "gcpx-linux-x86_64" => "gcpx"
      end
    end
  end

  test do
    assert_match "gcpx", shell_output("#{bin}/gcpx --version")
  end
end
