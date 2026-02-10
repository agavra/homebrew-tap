class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.7.1/tuicr-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "b2ff5946bfaaea22de57c2d45eabb87034f82397d27a85b99148a4d4263235c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.7.1/tuicr-0.7.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "104b6fe335dbac7b380ab8c547dad400226f43377e830128ce60914f506fab84"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.7.1/tuicr-0.7.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8724221e19d3991a3cca30c474ea11576dfe9978ca2db6c15432d32d698d6b28"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
