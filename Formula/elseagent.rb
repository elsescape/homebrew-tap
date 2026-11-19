class Elseagent < Formula
  desc "Codex agent for Slack and Telegram"
  homepage "https://github.com/elsescape/elseagent"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/elsescape/elseagent/releases/download/v0.4.0/elseagent-0.4.0-darwin-arm64.tar.gz"
      sha256 "d833c4710fb4befe81ca5ab34b26ad6705c4805bab1232d39de8d6517ee0531f"
    end
    on_intel do
      url "https://github.com/elsescape/elseagent/releases/download/v0.4.0/elseagent-0.4.0-darwin-x64.tar.gz"
      sha256 "e1550d7919fcc9d1b7405ac405ebdd71ad58be693866167e76bc9437181191f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elsescape/elseagent/releases/download/v0.4.0/elseagent-0.4.0-linux-arm64.tar.gz"
      sha256 "9b970571daeea06fb2ea630f3e7eca6ce6295111035450a05fc2df5bd02360bf"
    end
    on_intel do
      url "https://github.com/elsescape/elseagent/releases/download/v0.4.0/elseagent-0.4.0-linux-x64.tar.gz"
      sha256 "45fe28ab41fc2e6d2793f04124a9bd949394584f88948065093f04d7f6f376ce"
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
