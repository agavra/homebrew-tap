class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.7.2/tuicr-0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "95e0fc791cf98d77aa53e07723ea28e7b8ca247b13ea5d0a1f95f477a83aa21c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.7.2/tuicr-0.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b696740e86c2a42d5406ea1adda6e152f902b295c57155f1c92c218e55037f6"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.7.2/tuicr-0.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "862798e1e4c6f3df475e796c4d10072c69213d5654439784ee6108b20a218422"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
