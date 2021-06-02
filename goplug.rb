# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Goplug < Formula
  desc "Testing goplug"
  homepage ""
  version "0.0.3-dev-c"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kushsharma/go-plug/releases/download/v0.0.3-dev-c/goplug_0.0.3-dev-c_macos_x86_64.tar.gz"
      sha256 "fe80cc29be27f997ba685f5e939362b685bbf4d07c60e5afea5b92b7e016af9d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kushsharma/go-plug/releases/download/v0.0.3-dev-c/goplug_0.0.3-dev-c_macos_arm64.tar.gz"
      sha256 "c5e19eeff260599c57914b10b7d92aa0a6c92d0e87529801ac8c5545f0d70773"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kushsharma/go-plug/releases/download/v0.0.3-dev-c/goplug_0.0.3-dev-c_linux_x86_64.tar.gz"
      sha256 "a08f04e43eb9cdf6f17eddd00d361d2e7de2e628f772903fad8380f61cf6e449"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/kushsharma/go-plug/releases/download/v0.0.3-dev-c/goplug_0.0.3-dev-c_linux_armv6.tar.gz"
      sha256 "504c344150403f9badb0f1fa8d74bed2cf1c45317deff8233bd7448fcb987122"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kushsharma/go-plug/releases/download/v0.0.3-dev-c/goplug_0.0.3-dev-c_linux_arm64.tar.gz"
      sha256 "d7e41cd1303170c4f4fc098fc460986492c566f1d3a2b61a9c10e38f918ba2a0"
    end
  end

  def install
    bin.install "goplug"
    bin.install "plugin-sql"
  end
end