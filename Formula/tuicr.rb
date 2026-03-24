class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.9.0/tuicr-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "79e2ce13c9ecaf3312836b98ec3ffc734ac22d164aa176bf751a2813fa173b78"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.9.0/tuicr-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "3172d3441dbb76e0405ee61249fa16557c261c03500690c0134546fc933e6652"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.9.0/tuicr-0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97344c7bf3c3264a138c7c9a2ed3f0d636342ccf9714f76c73b073e7fd29dba5"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.9.0/tuicr-0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1828c0c1ccd9e3d6a60005c38c7f1f77e354b6c0db0cf307882b3e93cc9b952b"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
