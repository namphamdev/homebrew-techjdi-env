# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TechjdiEnv < Formula
  desc "The official Infisical CLI"
  homepage "https://infisical.com"
  version "0.6.4"
  sha256 "d2b30098526ec8efff7878d217957e70f7f9e2d4426494a6f2e6b06c0816442a"
  license ""

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Infisical/infisical/releases/download/infisical-cli/v0.6.4/infisical_0.6.4_darwin_arm64.tar.gz"
      sha256 "d2b30098526ec8efff7878d217957e70f7f9e2d4426494a6f2e6b06c0816442a"

      def install
        bin.install "techjdi-env"
        bash_completion.install "completions/infisical.bash" => "techjdi-env"
        zsh_completion.install "completions/infisical.zsh" => "_techjdi-env"
        fish_completion.install "completions/infisical.fish"
        man1.install "manpages/infisical.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Infisical/infisical/releases/download/infisical-cli/v0.6.4/infisical_0.6.4_darwin_amd64.tar.gz"
      sha256 "35291caf8910529079b683e1f0b88cf446d8637c1d5d10bded4496fec3d56e8f"

      def install
        bin.install "techjdi-env"
        bash_completion.install "completions/infisical.bash" => "techjdi-env"
        zsh_completion.install "completions/infisical.zsh" => "_techjdi-env"
        fish_completion.install "completions/infisical.fish"
        man1.install "manpages/infisical.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/Infisical/infisical/releases/download/infisical-cli/v0.6.4/infisical_0.6.4_linux_armv6.tar.gz"
      sha256 "1f9234d50bb6524dffd55f0bbf12350cb26942fe01e33f96fb2e21b13594000c"

      def install
        bin.install "techjdi-env"
        bash_completion.install "completions/infisical.bash" => "techjdi-env"
        zsh_completion.install "completions/infisical.zsh" => "_techjdi-env"
        fish_completion.install "completions/infisical.fish"
        man1.install "manpages/infisical.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Infisical/infisical/releases/download/infisical-cli/v0.6.4/infisical_0.6.4_linux_arm64.tar.gz"
      sha256 "bee0b6ac7d8fac8a2d8b605e051d7503fddfc8af169a212676baf3f1c56c846f"

      def install
        bin.install "techjdi-env"
        bash_completion.install "completions/infisical.bash" => "techjdi-env"
        zsh_completion.install "completions/infisical.zsh" => "_techjdi-env"
        fish_completion.install "completions/infisical.fish"
        man1.install "manpages/infisical.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Infisical/infisical/releases/download/infisical-cli/v0.6.4/infisical_0.6.4_linux_amd64.tar.gz"
      sha256 "7d6eedba58fd148a350a052d794dd45176efd46cc1a9e399e0067062510fcbec"

      def install
        bin.install "techjdi-env"
        bash_completion.install "completions/infisical.bash" => "techjdi-env"
        zsh_completion.install "completions/infisical.zsh" => "_techjdi-env"
        fish_completion.install "completions/infisical.fish"
        man1.install "manpages/infisical.1.gz"
      end
    end
  end
end
