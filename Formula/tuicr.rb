class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.5.0/tuicr-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "5248e66d1f0d7117953e7162ce28369a68c2fb5a33af44aa25769ec5b298d552"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.5.0/tuicr-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5326486b6ebefbde56d53c012e62676bcecb4e54278023bbb2f38be9a3718cdd"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.5.0/tuicr-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bf01616328e415c372a82dba0d5be8bfacbb4e330fe269c699e1b5960ce356a8"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
