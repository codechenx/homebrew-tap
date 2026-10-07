class CodechenxFtv < Formula
  desc "Fast, feature-rich CSV/TSV/delimited file viewer for the command-line"
  homepage "https://github.com/codechenx/FastTableViewer"
  version "0.9.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/codechenx/FastTableViewer/releases/download/v0.9.2/FastTableViewer_0.9.2_Darwin_arm64.tar.gz"
      sha256 "2fc7810d2e453f63694792799fcfce3b3e6f304f7d4bac0cb9c7890cca00d259"
    end
    on_intel do
      url "https://github.com/codechenx/FastTableViewer/releases/download/v0.9.2/FastTableViewer_0.9.2_Darwin_x86_64.tar.gz"
      sha256 "2bed74737e4a4d72fdef611c35dc1c6a9b2142dcb438e0e93f2c188aece7b8a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codechenx/FastTableViewer/releases/download/v0.9.2/FastTableViewer_0.9.2_Linux_arm64.tar.gz"
      sha256 "bb0b6b159a5a2c510fd2e51c005a5eb42229fdb3859b435f4b24736efd8135f8"
    end
    on_intel do
      url "https://github.com/codechenx/FastTableViewer/releases/download/v0.9.2/FastTableViewer_0.9.2_Linux_x86_64.tar.gz"
      sha256 "7d78c3282558a09462989a88b68dad7e0f6958691f513bff9fec7350766aef48"
    end
  end

  def install
    # The archive carries the binary as ftv from v0.9.1 onwards; earlier
    # releases held it as FastTableViewer and needed renaming here.
    bin.install "ftv"
  end

  test do
    assert_match "ftv version", shell_output("#{bin}/ftv --version")
  end
end
