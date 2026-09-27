# typed: false
# frozen_string_literal: true

class Gcpx < Formula
  desc "GCP context switcher - manage multiple gcloud accounts with instant ADC switching"
  homepage "https://github.com/andres-pcg/gcpx"
  license "MIT"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-macos-aarch64"
      sha256 "adadd2444a8b33f6e9e8ff74861b17c6fa5e854dda9a91ebe1c19d9a095381f6"

      def install
        bin.install "gcpx-macos-aarch64" => "gcpx"
      end
    else
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-macos-x86_64"
      sha256 "b7f300b63a49c2225a1a82675422e0d76927b2316d7e239dae3abe9c82af4af9"

      def install
        bin.install "gcpx-macos-x86_64" => "gcpx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-linux-aarch64"
      sha256 "3ac16bd1af26a919d92f7353f6b3dafaaa4b79872d7504d5e4979f93a4d3b282"

      def install
        bin.install "gcpx-linux-aarch64" => "gcpx"
      end
    else
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-linux-x86_64"
      sha256 "f05aa86038e30bd87764125c9ad33511815713cef1eb5960f4205a4a76db35d6"

      def install
        bin.install "gcpx-linux-x86_64" => "gcpx"
      end
    end
  end

  test do
    assert_match "gcpx", shell_output("#{bin}/gcpx --version")
  end
end
