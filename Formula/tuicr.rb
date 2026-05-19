class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.15.0/tuicr-0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "8e4e9adacf5c9668412a1ec5b832daacc12d8d1adf4a1efb675406d1e7931b26"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.15.0/tuicr-0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "fdaecea0dbb8e364ad5b04008c9f1ec0c53236f260c1272a5590bc04242c67ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.15.0/tuicr-0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b46535feb3490832234b1dccc2c573747988ec2547bbe205559617eadae0e3e1"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.15.0/tuicr-0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2ad7c6cf389d4cf3b4ddda502d168d377bb04020c67f48d0a47b38aff751b33f"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
