class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.6.0/tuicr-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "2b7cf35ce8d1486a9f67d6fae4b26b7fbf32cc24960b6fcfe2d5683f0bbb51e2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.6.0/tuicr-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da679f0fb76f705be000ea25edd2e8caeacd7030b2b5728cebd4a6dcc3a388b1"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.6.0/tuicr-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c03a82fbae7c67463bf5dc89ea4cea98e581e133719782c21eefd6caca8b779"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
