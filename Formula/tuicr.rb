class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.2.0/tuicr-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "94278908b9fffa69311c8c9d57846373c33a7f4f43df058509d64e4142a1f942"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.2.0/tuicr-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30308b00d34f3973c7aac65dc971c44ab5057d91360c5f20b5032ab9eb313088"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.2.0/tuicr-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f668f04afee969bd92095ec85aef7f66626ae2e6b74823b24736282a941c0c52"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
