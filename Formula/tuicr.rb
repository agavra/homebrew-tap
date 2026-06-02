class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.17.0/tuicr-0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "436950d50522b841b1c871bbade6e22d61d5d3dd31af0a993138f81d60149421"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.17.0/tuicr-0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "63c21459930eb504254cd32e842a7fcecad392dbbb0a4be1763c398cb5d51127"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.17.0/tuicr-0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d38ff2aa31344b83417a48cb1ecfd15bb6d4b89ea262671b34c2c5fa604e322"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.17.0/tuicr-0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f6c42be6a057772dcc5214819c584a2f75daf906cc7e44d2271e12573c1dc65b"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
