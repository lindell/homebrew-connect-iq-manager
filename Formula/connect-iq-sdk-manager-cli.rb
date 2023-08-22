# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ConnectIqSdkManagerCli < Formula
  desc "CLI to download connectIQ resources"
  homepage "https://github.com/lindell/connect-iq-sdk-manager-cli"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lindell/connect-iq-sdk-manager-cli/releases/download/v0.6.0/connect-iq-sdk-manager-cli_0.6.0_Darwin_ARM64.tar.gz"
      sha256 "9d3b4868ecc9f51452c46c555cb49c8d4d73031c4b6b694caef48c694992c858"

      def install
        bin.install "connect-iq-sdk-manager"
        bash_completion.install "completions/connect-iq-sdk-manager.bash" => "connect-iq-sdk-manager"
        zsh_completion.install "completions/connect-iq-sdk-manager.zsh" => "_connect-iq-sdk-manager"
        fish_completion.install "completions/connect-iq-sdk-manager.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lindell/connect-iq-sdk-manager-cli/releases/download/v0.6.0/connect-iq-sdk-manager-cli_0.6.0_Darwin_x86_64.tar.gz"
      sha256 "f041b04e530ebb7316a2e5b61b7db24d2ef5b2ca04f4f61eab8aeb7c6bcf6800"

      def install
        bin.install "connect-iq-sdk-manager"
        bash_completion.install "completions/connect-iq-sdk-manager.bash" => "connect-iq-sdk-manager"
        zsh_completion.install "completions/connect-iq-sdk-manager.zsh" => "_connect-iq-sdk-manager"
        fish_completion.install "completions/connect-iq-sdk-manager.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lindell/connect-iq-sdk-manager-cli/releases/download/v0.6.0/connect-iq-sdk-manager-cli_0.6.0_Linux_x86_64.tar.gz"
      sha256 "35775a478b03281116fcd33cdaf815714b2e85a0785df0fbfbf03cb0d4199917"

      def install
        bin.install "connect-iq-sdk-manager"
        bash_completion.install "completions/connect-iq-sdk-manager.bash" => "connect-iq-sdk-manager"
        zsh_completion.install "completions/connect-iq-sdk-manager.zsh" => "_connect-iq-sdk-manager"
        fish_completion.install "completions/connect-iq-sdk-manager.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/lindell/connect-iq-sdk-manager-cli/releases/download/v0.6.0/connect-iq-sdk-manager-cli_0.6.0_Linux_ARM.tar.gz"
      sha256 "ada6851cabf69bd316e95f95c4d6f3298e5c596bc603f43c8cca7f94760c722b"

      def install
        bin.install "connect-iq-sdk-manager"
        bash_completion.install "completions/connect-iq-sdk-manager.bash" => "connect-iq-sdk-manager"
        zsh_completion.install "completions/connect-iq-sdk-manager.zsh" => "_connect-iq-sdk-manager"
        fish_completion.install "completions/connect-iq-sdk-manager.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lindell/connect-iq-sdk-manager-cli/releases/download/v0.6.0/connect-iq-sdk-manager-cli_0.6.0_Linux_ARM64.tar.gz"
      sha256 "613c2b2959799dcadde394e91bfd3d59623829c49539439a0e455852efb98410"

      def install
        bin.install "connect-iq-sdk-manager"
        bash_completion.install "completions/connect-iq-sdk-manager.bash" => "connect-iq-sdk-manager"
        zsh_completion.install "completions/connect-iq-sdk-manager.zsh" => "_connect-iq-sdk-manager"
        fish_completion.install "completions/connect-iq-sdk-manager.fish"
      end
    end
  end

  test do
    system "#{bin}/connect-iq-sdk-manager", "version"
  end
end
