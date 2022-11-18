# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Perfops < Formula
  desc ""
  homepage "https://github.com/ProspectOne/perfops-cli"
  version "0.8.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ProspectOne/perfops-cli/releases/download/v0.8.17/perfops-cli_0.8.17_Darwin_arm64.tar.gz"
      sha256 "cc9f7373b8fa26799ba66dca8f7006652b11246f3d4c7d9aa996df63a7b71cb8"

      def install
        bin.install "perfops"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ProspectOne/perfops-cli/releases/download/v0.8.17/perfops-cli_0.8.17_Darwin_x86_64.tar.gz"
      sha256 "fed525468830ea6122d0c19ba642aed7cfcde02548724ed04a411309e22f8078"

      def install
        bin.install "perfops"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ProspectOne/perfops-cli/releases/download/v0.8.17/perfops-cli_0.8.17_Linux_arm64.tar.gz"
      sha256 "9a57d96370e7b98f18e1a91f0dd5d7dee7258e37acf918f1832f6add669e093d"

      def install
        bin.install "perfops"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ProspectOne/perfops-cli/releases/download/v0.8.17/perfops-cli_0.8.17_Linux_x86_64.tar.gz"
      sha256 "28dba438ce57e5302ce354778a185197eb89251b73835b97001ea1badd31c3ed"

      def install
        bin.install "perfops"
      end
    end
  end
end
