class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.1.1/tuicr-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "6086ea1de724d279ffea7cceea78f2c34756c1676c2fd0fa7f8ccff753363cde"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.1.1/tuicr-0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf9f80e9902932c14f8e8639880ed00889c3efe40dd29796114d63d794618637"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.1.1/tuicr-0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "13516f489322cd72db1548c40f47b3ddd8c6cc0e5c5a7d1e36e8afbcf8ed5bbd"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
