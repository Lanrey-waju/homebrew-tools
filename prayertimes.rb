# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Prayertimes < Formula
  desc "A CLI tool for retrieving Islamic prayer times"
  homepage "https://github.com/lanrey-waju/prayertimes"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Lanrey-waju/prayertimes/releases/download/v0.1.1/prayertimes_Darwin_x86_64.tar.gz"
      sha256 "3ca91d1f0a8d33311727a86c4f9542d3b16e2785b5c080d44aa13800cc65d70a"

      def install
        bin.install "prayertimes"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Lanrey-waju/prayertimes/releases/download/v0.1.1/prayertimes_Darwin_arm64.tar.gz"
      sha256 "843ee06818415d3790ad97b997f62d335596a41428ec641343106616cdf16299"

      def install
        bin.install "prayertimes"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Lanrey-waju/prayertimes/releases/download/v0.1.1/prayertimes_Linux_x86_64.tar.gz"
        sha256 "c6532f85e1454c9e2132dd75f7b71647e0e6b18eb7f9863ee52beea9d0d56ebd"

        def install
          bin.install "prayertimes"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/Lanrey-waju/prayertimes/releases/download/v0.1.1/prayertimes_Linux_arm64.tar.gz"
        sha256 "d67c41b19ed340b81b44410cf89a47cabdabf07cfd2da54fdfe925d0db294947"

        def install
          bin.install "prayertimes"
        end
      end
    end
  end

  test do
    system "#{bin}/prayertimes", "--help"
  end
end
