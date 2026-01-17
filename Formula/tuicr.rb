class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.4.0/tuicr-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "c22af940b57f9d6226ad4f155464b618658187c05a1943140684c1eddbcfc570"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.4.0/tuicr-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78a47a4866d4751cb6a01db15ac421482bca10c210be7cec5a72fc372ad8a204"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.4.0/tuicr-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6e828c476b470b39b2afd45f0b085bd92f39330e92067af50200d1deb503884b"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
