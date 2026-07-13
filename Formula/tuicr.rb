class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.19.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.19.1/tuicr-0.19.1-x86_64-apple-darwin.tar.gz"
      sha256 "46cb4732c98839220b5d5b8dd099450dd35b4de24dcf873ef47b0ad944519f08"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.19.1/tuicr-0.19.1-aarch64-apple-darwin.tar.gz"
      sha256 "f89a6682defb9b81084ee89dde6bde64b7fe6e8b90788a7a3490d2d6cacbf2d4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.19.1/tuicr-0.19.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "67addacc28ee9c6d1ce84220954f1ff0c6a82b374822142dd8cb615b3d425ec5"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.19.1/tuicr-0.19.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "070c5cee0862c51cfb9718591c7faa4c163a44153cb9b596d107cfb5c86c99ab"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
