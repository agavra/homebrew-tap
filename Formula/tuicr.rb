class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.13.0/tuicr-0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "635a49aef16720e518e0543268c35261a9977ffc4379ac12e15f935c833c702d"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.13.0/tuicr-0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "9374b622999889144b970c03febe573b9a40df873e5172f07d61edb805c96c1c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.13.0/tuicr-0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c417ff3a67980328deadc6ac767d1788568c2c3965bac81b02e7860292d462e"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.13.0/tuicr-0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "70466962df90c7713e95f255b13b52ed84cdd88820c0bab9b021efb53dda214c"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
