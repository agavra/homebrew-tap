class Tuicr < Formula
  desc "Terminal UI for Code Reviews - review AI-generated diffs like a GitHub PR"
  homepage "https://github.com/agavra/tuicr"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.3.0/tuicr-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "b8bf4a4cd5ef560c439ad266bab70b9bdec8788e81ffade7f1cbc00dffcdbe93"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agavra/tuicr/releases/download/v0.3.0/tuicr-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2ab48ca4dec63c4be01962e630b1753c111ec3fe6b3ea557c8a776c421fc109d"
    end
    on_arm do
      url "https://github.com/agavra/tuicr/releases/download/v0.3.0/tuicr-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66bf3d5dcf198b64e8e3e49b1cb4624907d697d9cfa43a7f45426953a7260efc"
    end
  end

  def install
    bin.install "tuicr"
  end

  test do
    assert_match "tuicr", shell_output("#{bin}/tuicr --version 2>&1", 1)
  end
end
