class Elseagent < Formula
  desc "Codex agent for Slack and Telegram"
  homepage "https://github.com/elsescape/elseagent"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/elsescape/elseagent/releases/download/v0.3.0/elseagent-0.3.0-darwin-arm64.tar.gz"
      sha256 "1907c43e4970390808ada021d22998f2a716b3167e611894d592beb933473c8c"
    end
    on_intel do
      url "https://github.com/elsescape/elseagent/releases/download/v0.3.0/elseagent-0.3.0-darwin-x64.tar.gz"
      sha256 "0dd84d9d6b8327965f66d3495d613a74004404eb818ee8159beb2aec7cf64e06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elsescape/elseagent/releases/download/v0.3.0/elseagent-0.3.0-linux-arm64.tar.gz"
      sha256 "a1abdcb09c6af5942fba634b9035826f853f1b36c4d33396de48de07a61d9550"
    end
    on_intel do
      url "https://github.com/elsescape/elseagent/releases/download/v0.3.0/elseagent-0.3.0-linux-x64.tar.gz"
      sha256 "87db362762dcca123072e0c4c23673fe9524156cca2d5fc1bbb71a6e67f5b3dd"
    end
  end

  def install
    bin.install "elseagent"
  end

  def caveats
    <<~EOS
      Install the Codex CLI and make it available on PATH.
      Run elseagent init, configure Slack or Telegram in ~/.elseagent/config.yml,
      then start the agent with elseagent run.

      Setup: https://github.com/elsescape/elseagent/blob/main/README.md#local-installation
    EOS
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/elseagent --version").strip
  end
end
