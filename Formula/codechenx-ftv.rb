class CodechenxFtv < Formula
  desc "Fast, feature-rich CSV/TSV/delimited file viewer for the command-line"
  homepage "https://github.com/codechenx/FastTableViewer"
  version "0.9.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/codechenx/FastTableViewer/releases/download/v0.9.1/FastTableViewer_0.9.1_Darwin_arm64.tar.gz"
      sha256 "d2bf86bef5216dc0b939a930edb1c6f353596f31131797ad12bcb4b747d5e03b"
    end
    on_intel do
      url "https://github.com/codechenx/FastTableViewer/releases/download/v0.9.1/FastTableViewer_0.9.1_Darwin_x86_64.tar.gz"
      sha256 "6d652d333684032a9d47e2f29e977c968c1395f8df636a0ff968f04a0422f9e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/codechenx/FastTableViewer/releases/download/v0.9.1/FastTableViewer_0.9.1_Linux_arm64.tar.gz"
      sha256 "44d9d11f57c546e836124bb7fa55f61cd37b91b633db13e628c5a662b3678767"
    end
    on_intel do
      url "https://github.com/codechenx/FastTableViewer/releases/download/v0.9.1/FastTableViewer_0.9.1_Linux_x86_64.tar.gz"
      sha256 "759702d8139a1f09a580e38919a2e7e739aa3926cd38aeb62009304067b8c5c3"
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
