# typed: false
# frozen_string_literal: true

class Gcpx < Formula
  desc "GCP context switcher - manage multiple gcloud accounts with instant ADC switching"
  homepage "https://github.com/andres-pcg/gcpx"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-macos-aarch64"
      sha256 "23c7e282f166eba085ba404449b6faf2cd31f2a7b4318900b9db00b27b43ff8e"

      def install
        bin.install "gcpx-macos-aarch64" => "gcpx"
      end
    else
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-macos-x86_64"
      sha256 "896ccf26bfddc8f1124d6f368f551dcf31d53f495a4cd51962468037494866b7"

      def install
        bin.install "gcpx-macos-x86_64" => "gcpx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-linux-aarch64"
      sha256 "b7da5e90566464f9f77d5acdeec48199f6fb3756190f800b130bd254d410c9da"

      def install
        bin.install "gcpx-linux-aarch64" => "gcpx"
      end
    else
      url "https://github.com/andres-pcg/gcpx/releases/download/v#{version}/gcpx-linux-x86_64"
      sha256 "3fbbb5de6c6a8cfbb3af5170fdacf44e4a4715335766023df45eb3b2a5da73d6"

      def install
        bin.install "gcpx-linux-x86_64" => "gcpx"
      end
    end
  end

  test do
    assert_match "gcpx", shell_output("#{bin}/gcpx --version")
  end
end
