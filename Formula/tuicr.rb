class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.8.0/tuicr-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "d6b6f050ba88e13af0d027a9c01c1d159bc95c1730791166bd1ba712c943044e"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.8.0/tuicr-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "6d38b3d34e75d476c0dcaba73b7b36b135079cc5fb400302cad89f1f72e149a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.8.0/tuicr-0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b836a40c122782003583134de153e2e45003bcab724da98b3d5189d0b9bd9261"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.8.0/tuicr-0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "334b11cb8dd4eb383d01f2bb78eabc0854bee1660ad8e744797300cbc6ec5dc9"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
