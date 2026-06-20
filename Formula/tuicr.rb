class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.18.0/tuicr-0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "caf31a9aec9b890a384722c3ffb52aa38a6b906f18eb6bddaf55af941a2e4843"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.18.0/tuicr-0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "b2bb012e9b3863f691fc42ee04fec5dfd3384950d9c9fca1ea8fc4b63845c0b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.18.0/tuicr-0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3023e850e6e336238acc0337799e912705d76e0078a4a5d1a0a84290717926e2"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.18.0/tuicr-0.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b6f71b597da42aad4e345b2b112a82f42e42039bda0fea350adc5ea42166d42"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
