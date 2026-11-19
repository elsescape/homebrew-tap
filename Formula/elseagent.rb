class Elseagent < Formula
  desc "Codex agent for Slack and Telegram"
  homepage "https://github.com/elsescape/elseagent"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/elsescape/elseagent/releases/download/v0.2.0/elseagent-0.2.0-darwin-arm64.tar.gz"
      sha256 "5a9bce669025e2dbec99cd164f7828ca7e7d934a30b8b7fe305ec2d316c02e46"
    end
    on_intel do
      url "https://github.com/elsescape/elseagent/releases/download/v0.2.0/elseagent-0.2.0-darwin-x64.tar.gz"
      sha256 "f1f3eb6c31e2d4b266ab12ec6eeb4165a0042df62b499e187307e7caf5df18ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elsescape/elseagent/releases/download/v0.2.0/elseagent-0.2.0-linux-arm64.tar.gz"
      sha256 "e94cc7574c16f66e63e3453edf9686b83071b060f125b9064d7ebf3b9fbddcda"
    end
    on_intel do
      url "https://github.com/elsescape/elseagent/releases/download/v0.2.0/elseagent-0.2.0-linux-x64.tar.gz"
      sha256 "3837168ff5dd99487eeddb56c050e8dc135e03c6c62d276ffb66277360eb3bec"
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
