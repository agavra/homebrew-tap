class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.17.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.17.1/tuicr-0.17.1-x86_64-apple-darwin.tar.gz"
      sha256 "834e6a7895c66412e8d9ac16565ccb234cd50df9dbaca75213ebde377854885c"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.17.1/tuicr-0.17.1-aarch64-apple-darwin.tar.gz"
      sha256 "3f741bbf4d65ee820e96e43debdc8ea7df25b76afd30be9da21a1bd0887375c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.17.1/tuicr-0.17.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "90a013bcdc628cf5c50b21cc0efc9f0ae1c74ea41232880656a5ca3fd983c340"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.17.1/tuicr-0.17.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "751d15c75291824118eea94b20925014232b7a0c2fd39958277226e50b95adc1"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
