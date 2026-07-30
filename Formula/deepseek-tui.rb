class DeepseekTui < Formula
  desc "AI-native note-taking and research assistant for the terminal with Obsidian integration"
  homepage "https://github.com/Shyboy0499/DeepSeek-Tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Shyboy0499/DeepSeek-Tui/releases/download/v#{version}/deepseek-tui-macos-arm64"
      sha256 "3390168ce5e4dd3300fa9c22496dd32c26fc81692ed591b3cba61864c190349a"
    else
      url "https://github.com/Shyboy0499/DeepSeek-Tui/releases/download/v#{version}/deepseek-tui-macos-x86_64"
      sha256 "fe59f7a704c6b0830c7b61f7817f6b99c9cf726cac9468b9baf99fe14bba603e"
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
