class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.7.0/tuicr-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "be054519f29ec7565d1dceb5e66567a4a7efcc9d5a7b8c6ff5573ba672486357"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.7.0/tuicr-0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ee7da5acabfe3723cb54f7278d60942806ff4aef083eef697e018396a27ead9"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.7.0/tuicr-0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dff3a45d2704df38fb242e1107d1ae7eec42e27a04bbf3d2053842a1c8a5878b"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
