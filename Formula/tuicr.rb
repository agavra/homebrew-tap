class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.14.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.14.1/tuicr-0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "c49d74b86f3fd451e56f00993dd6fea206bf05e1c64feabc0884bcb75dfd0715"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.14.1/tuicr-0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "55174ff0e6fca67ddb5f3c5b014d77b5cf5d6ee242f9e437586230de549d0993"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.14.1/tuicr-0.14.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "62862255f2bdda0731411a74c14f96b704621f2c8c56f19ba8a4b5d3c766f521"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.14.1/tuicr-0.14.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d81d52e5b7b1bd85e32dd037bf67c49e8df34e977121c8b301baea9cb08d4128"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
