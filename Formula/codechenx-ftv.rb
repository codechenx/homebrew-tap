class CodechenxFtv < Formula
  desc "Fast, feature-rich CSV/TSV/delimited file viewer for the command-line"
  homepage "https://github.com/codechenx/FastTableViewer"
  version "0.9.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/codechenx/FastTableViewer/releases/download/v0.9.3/FastTableViewer_0.9.3_Darwin_arm64.tar.gz"
      sha256 "00d876fa8188e915a30440bdba9c780307a0547be175875a13afc97d536849ad"
    end
    on_intel do
      url "https://github.com/codechenx/FastTableViewer/releases/download/v0.9.3/FastTableViewer_0.9.3_Darwin_x86_64.tar.gz"
      sha256 "1cef191f06a905688e46a4c4489c352ba3aa296dbe92fc4c000ff2f08419c328"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codechenx/FastTableViewer/releases/download/v0.9.3/FastTableViewer_0.9.3_Linux_arm64.tar.gz"
      sha256 "0554c35458f283cffec45e9e2d0780b5b98a74ae2fc841ade95f73dc0f36acd4"
    end
    on_intel do
      url "https://github.com/codechenx/FastTableViewer/releases/download/v0.9.3/FastTableViewer_0.9.3_Linux_x86_64.tar.gz"
      sha256 "11442c3dbbc9eccb0eb67f4061bd0ae26f462cf9bd2e51bc67f8d46fc82d3407"
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
