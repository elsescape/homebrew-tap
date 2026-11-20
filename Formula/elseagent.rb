class Elseagent < Formula
  desc "Codex agent for Slack and Telegram"
  homepage "https://github.com/elsescape/elseagent"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/elsescape/elseagent/releases/download/v0.5.0/elseagent-0.5.0-darwin-arm64.tar.gz"
      sha256 "5341a703635676e45a9674069f0a1eedd637353159031a786ce1cea04e60bc7a"
    end
    on_intel do
      url "https://github.com/elsescape/elseagent/releases/download/v0.5.0/elseagent-0.5.0-darwin-x64.tar.gz"
      sha256 "dbb3432dde59df2530af420713a682615a843ee884e7b61ff9aba97ecd1484b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elsescape/elseagent/releases/download/v0.5.0/elseagent-0.5.0-linux-arm64.tar.gz"
      sha256 "1947a82772bc2f084fa5d619fcd1d5d72380bdbaa10c191eb9b09f840ef56f2d"
    end
    on_intel do
      url "https://github.com/elsescape/elseagent/releases/download/v0.5.0/elseagent-0.5.0-linux-x64.tar.gz"
      sha256 "74e1bb1b201888973455bbfc21afd07a87352c91716a775eee950529d539c9f6"
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
