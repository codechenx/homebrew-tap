class CodechenxTv < Formula
  desc "Fast, feature-rich CSV/TSV/delimited file viewer for the command-line"
  homepage "https://github.com/codechenx/FastTableViewer"
  url "https://github.com/codechenx/FastTableViewer/releases/download/v0.8.0/tv_0.8.0_Darwin_arm64.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "Apache-2.0"

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    bin.install "ftv"
  end

  test do
    system "#{bin}/ftv", "--version"
  end
end
