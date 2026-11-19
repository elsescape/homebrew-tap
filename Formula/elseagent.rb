class Elseagent < Formula
  desc "Codex agent for Slack and Telegram"
  homepage "https://github.com/elsescape/elseagent"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/elsescape/elseagent/releases/download/v0.1.0/elseagent-0.1.0-darwin-arm64.tar.gz"
      sha256 "0ee26e98b9070ba14cb1464fc0475fed579becfca27c2f0e4fd81e60f11800d2"
    end
    on_intel do
      url "https://github.com/elsescape/elseagent/releases/download/v0.1.0/elseagent-0.1.0-darwin-x64.tar.gz"
      sha256 "b8d67085d3b3676f28b530a1a8e7f83d621e0e8680afdb09982c289f82ac7ca6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elsescape/elseagent/releases/download/v0.1.0/elseagent-0.1.0-linux-arm64.tar.gz"
      sha256 "281a5312dfc707548fb0c41cd413452463be78d218adccd6717ad841f885bbb8"
    end
    on_intel do
      url "https://github.com/elsescape/elseagent/releases/download/v0.1.0/elseagent-0.1.0-linux-x64.tar.gz"
      sha256 "43fa14735d6d7c09799d45691e29a4dded35b45f0ab84af4287ec923d2a9bf1d"
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
