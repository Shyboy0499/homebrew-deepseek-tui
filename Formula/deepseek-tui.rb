class DeepseekTui < Formula
  desc "AI-native note-taking and research assistant for the terminal with Obsidian integration"
  homepage "https://github.com/Shyboy0499/DeepSeek-Tui"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Shyboy0499/DeepSeek-Tui/releases/download/v#{version}/deepseek-tui-macos-arm64"
      sha256 "623a701afea5b3f0b334e2fe9890beb17f83a3b10485184e22c014309dc01ab8"
    else
      url "https://github.com/Shyboy0499/DeepSeek-Tui/releases/download/v#{version}/deepseek-tui-macos-x86_64"
      sha256 "33a594d022cb0ba541be08878bbf6344b69a748df12fee1de6a72e2b55f91ebd"
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
