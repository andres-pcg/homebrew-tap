# typed: false
# frozen_string_literal: true

class Gcpx < Formula
  desc "GCP context switcher - manage multiple gcloud accounts with instant ADC switching"
  homepage "https://github.com/andres-pcg/gcpx"
  license "MIT"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-macos-aarch64"
      sha256 "5f5893a3087837690165c4e6249a84399a57a77ccc54e891e4528f5b5e5befbb"

      def install
        bin.install "gcpx-macos-aarch64" => "gcpx"
      end
    else
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-macos-x86_64"
      sha256 "b2c954c22ec468704bf8b6b3ef31554c8f68ea953214cfe06795845e8468b5c2"

      def install
        bin.install "gcpx-macos-x86_64" => "gcpx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-linux-aarch64"
      sha256 "fc27307ac8f707a39b860a0a2e7fb78643fd544fc4cd5f837005f618b2796520"

      def install
        bin.install "gcpx-linux-aarch64" => "gcpx"
      end
    else
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-linux-x86_64"
      sha256 "9834571332a80f14815cf1195750634d31564032285202867fe8b1c07ec47a16"

      def install
        bin.install "gcpx-linux-x86_64" => "gcpx"
      end
    end
  end

  test do
    assert_match "gcpx", shell_output("#{bin}/gcpx --version")
  end
end
