class CodechenxFtv < Formula
  desc "Fast, feature-rich CSV/TSV/delimited file viewer for the command-line"
  homepage "https://github.com/codechenx/FastTableViewer"
  url "https://github.com/codechenx/FastTableViewer/releases/download/v0.8/FastTableViewer_0.8_Darwin_arm64.tar.gz"
  sha256 "ffa5834ad97149d0d9761107e603be0ceea494db54f62352c22563586a11e779"
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
