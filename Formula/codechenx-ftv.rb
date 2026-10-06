class CodechenxFtv < Formula
  desc "Fast, feature-rich CSV/TSV/delimited file viewer for the command-line"
  homepage "https://github.com/codechenx/FastTableViewer"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/codechenx/FastTableViewer/releases/download/v0.9.0/FastTableViewer_0.9.0_Darwin_arm64.tar.gz"
      sha256 "0223c7db389bb42e4e0f6128e56b663344404f582143a9b6a05b949cb14d04d4"
    end
    on_intel do
      url "https://github.com/codechenx/FastTableViewer/releases/download/v0.9.0/FastTableViewer_0.9.0_Darwin_x86_64.tar.gz"
      sha256 "84efdec0587f396350029f40e38837413bd26f6af66bca44c691dee7311e4f08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codechenx/FastTableViewer/releases/download/v0.9.0/FastTableViewer_0.9.0_Linux_arm64.tar.gz"
      sha256 "fc3f1020e9ae631234cc710a4a4f1b9a84402124373ad2aedcd8bc3d6630821f"
    end
    on_intel do
      url "https://github.com/codechenx/FastTableViewer/releases/download/v0.9.0/FastTableViewer_0.9.0_Linux_x86_64.tar.gz"
      sha256 "57ab3f27b7e6ad1364fdbfbf0119edf79f301dd7a4e633d2c37f7fde031f2d2a"
    end
  end

  def install
    bin.install "FastTableViewer" => "ftv"
  end

  test do
    assert_match "ftv version", shell_output("#{bin}/ftv --version")
  end
end
