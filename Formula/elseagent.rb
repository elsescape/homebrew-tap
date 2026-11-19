class Elseagent < Formula
  desc "Personal master agent that delegates work to background Codex workers"
  homepage "https://github.com/elsescape/elseagent"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/elsescape/elseagent/releases/download/v0.0.1/elseagent-0.0.1-darwin-arm64.tar.gz"
      sha256 "c1679de333826100420300c98133796fa47c6a9e24a4dc4a21ed66296e837ba0"
    end
    on_intel do
      url "https://github.com/elsescape/elseagent/releases/download/v0.0.1/elseagent-0.0.1-darwin-x64.tar.gz"
      sha256 "158c4af019a9dce1399015a7756ef39db48c86b2a683bf57d636ef6cab9d6cc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elsescape/elseagent/releases/download/v0.0.1/elseagent-0.0.1-linux-arm64.tar.gz"
      sha256 "bef1a22ea0d6430df1c050284d7e4d30978482d0422d74b0a7d34c1cb2afdd41"
    end
    on_intel do
      url "https://github.com/elsescape/elseagent/releases/download/v0.0.1/elseagent-0.0.1-linux-x64.tar.gz"
      sha256 "4c02166dda5ac3a98535df92f1f772a3c559800d577b235a4c00e35bf7cd8618"
    end
  end

  def install
    bin.install "elseagent"
  end

  def caveats
    <<~EOS
      Sign in once, then start the daemon and chat with it:
        elseagent login
        elseagent run
        elseagent tui

      Background workers need the Codex CLI: https://github.com/openai/codex
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/elseagent --version")
  end
end
