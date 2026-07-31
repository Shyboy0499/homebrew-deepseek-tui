class DeepseekTui < Formula
  desc "AI-native note-taking and research assistant for the terminal with Obsidian integration"
  homepage "https://github.com/Shyboy0499/DeepSeek-Tui"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Shyboy0499/DeepSeek-Tui/releases/download/v#{version}/deepseek-tui-macos-arm64"
      sha256 "426712eb71ebf3055f8c655a9f283adc8db71be50679ac0618fb6aff27a733e3"
    else
      url "https://github.com/Shyboy0499/DeepSeek-Tui/releases/download/v#{version}/deepseek-tui-macos-x86_64"
      sha256 "6130de00adb631392bf422676c1a41d6737b9a601a0c7ad3a90b63ccba6025ae"
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
