class CodechenxFtv < Formula
  desc "Fast, feature-rich CSV/TSV/delimited file viewer for the command-line"
  homepage "https://github.com/codechenx/FastTableViewer"
  url "https://github.com/codechenx/FastTableViewer/releases/download/v0.8.1/FastTableViewer_0.8.1_Darwin_arm64.tar.gz"
  sha256 "4fedce727b97640a6e3c59c90aa3957b51aee7d9f01c81e6a602257e46726e8a"
  license "Apache-2.0"

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    bin.install "FastTableViewer" => "ftv"
  end

  test do
    system "#{bin}/ftv", "--version"
  end
end
