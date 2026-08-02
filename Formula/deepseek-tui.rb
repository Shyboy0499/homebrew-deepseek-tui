class DeepseekTui < Formula
  desc "AI-native note-taking and research assistant for the terminal with Obsidian integration"
  homepage "https://github.com/Shyboy0499/DeepSeek-Tui"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Shyboy0499/DeepSeek-Tui/releases/download/v#{version}/deepseek-tui-macos-arm64"
      sha256 "e0ccc460a109e8039befe1426b67cae5eeb335b94ddf4eabaf2db9b914833ace"
    else
      url "https://github.com/Shyboy0499/DeepSeek-Tui/releases/download/v#{version}/deepseek-tui-macos-x86_64"
      sha256 "8e054a092f9fc8b2d8bdfa4dbb01bb8953b8c2bf167fadc70bf9fc230f01c182"
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
