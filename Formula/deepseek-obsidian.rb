class DeepseekObsidian < Formula
  desc "AI-native note-taking and research assistant for the terminal with Obsidian integration"
  homepage "https://github.com/Shyboy0499/DeepSeek-Obsidian"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Shyboy0499/DeepSeek-Obsidian/releases/download/v#{version}/deepseek-obsidian-macos-arm64"
      sha256 "959720cc74a46cdd2ea8bba414f776caff946c62d67648d68c79aa56d59f8264"
    else
      url "https://github.com/Shyboy0499/DeepSeek-Obsidian/releases/download/v#{version}/deepseek-obsidian-macos-x86_64"
      sha256 "c36f082f61df55d5b5cb9c76159883f9249d38c72ea001ba08248f80787cb53d"
    end
  end

  def install
    bin.install Dir["*"].find { |f| f.start_with?("deepseek-obsidian-macos-") } => "deepseek-obsidian"
  end

  test do
    assert_predicate bin/"deepseek-obsidian", :exist?
    assert_predicate bin/"deepseek-obsidian", :executable?
  end
end
