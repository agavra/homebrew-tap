class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.19.0/tuicr-0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "55367984fa6bf5f487bf77409b723138a5bc460e3b55b887aac0e5928db61ad6"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.19.0/tuicr-0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "f276027163d139eff70e7ad2626405c578547ac8053ac12d1bf75d92a09b03f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.19.0/tuicr-0.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "41e62aabc379838c1b30be95fa0b14b0061821e9188886c9a33516b778f7c815"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.19.0/tuicr-0.19.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ca8e99e82e49fbdcab9d69725bbd56f4a8773a0225abbebda9f11fd6104a164"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
