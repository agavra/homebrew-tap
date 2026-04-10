class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.10.0/tuicr-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "27fa6af0eab89a6a3ea7b54d635da8f796900f2329c5db03e04edad375004c2b"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.10.0/tuicr-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "da3798ffe6e389c1ece16b8ce842fcd60d0db3e80c80c326b91264420d5af634"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.10.0/tuicr-0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22cd66ba6aa7b816c0e3c7f2416191b399023853dd2af08edf30cd0400fadc8e"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.10.0/tuicr-0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "752d96b4c84fd16451484b165b0b80b47a8cf7c0b56b187df16a97de73a7f82b"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
