class DeepseekTui < Formula
  desc "AI-native note-taking and research assistant for the terminal with Obsidian integration"
  homepage "https://github.com/Shyboy0499/DeepSeek-Tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Shyboy0499/DeepSeek-Tui/releases/download/v#{version}/deepseek-tui-macos-arm64"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_AFTER_FIRST_RELEASE"
    else
      url "https://github.com/Shyboy0499/DeepSeek-Tui/releases/download/v#{version}/deepseek-tui-macos-x86_64"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_AFTER_FIRST_RELEASE"
    end
  end

  def install
    bin.install Dir["*"].find { |f| f.start_with?("deepseek-tui-macos-") } => "deepseek-tui"
  end

  test do
    assert_predicate bin/"deepseek-tui", :exist?
    assert_predicate bin/"deepseek-tui", :executable?
  end
end
