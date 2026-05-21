class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.16.0/tuicr-0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "e373e8d476d336e5b66e79c584279a26267c37568bf274979453e44d2fd9bfa7"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.16.0/tuicr-0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "6d7f924d32a9fc4f5d7ba8ad566766deb6e509c054ccce2b6dd52adc2751ab6b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.16.0/tuicr-0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf6c28ae0423aba7b6a90aadf2aec3561bf6dd25de2bc818e4158215b4964094"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.16.0/tuicr-0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0efda3be19dee48699d469188b96125b76b9a6b3b2cf3c3c24f3945e81725780"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
