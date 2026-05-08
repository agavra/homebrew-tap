class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.12.0/tuicr-0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "93e57405b72cf626421843c29b60d43412167a46bc5aacccf8ad68fd39dab6a0"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.12.0/tuicr-0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "cf3dd694d1e11c35a90df945ff86bbd63af561cff199f2da635c15a0020c1b3b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.12.0/tuicr-0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4fe5f7c67b1640f819d584b5055651109f01f87f89d6a641de68b2d74f8097f8"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.12.0/tuicr-0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7569b488fe8f2a9ef424009d02c3d682c380744ff7d45d29379050b778b416da"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
