class CodechenxTv < Formula
  desc "Fast, feature-rich CSV/TSV/delimited file viewer for the command-line"
  homepage "https://github.com/codechenx/tv"
  url "https://github.com/codechenx/tv/releases/download/v0.7.1/tv_0.7.1_Darwin_arm64.tar.gz"
  sha256 "7f449350640493640fe1b16be6aa9f4417c978b59490ca38dc65d1fdd0df6412"
  license "Apache-2.0"

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    bin.install "tv"
  end

  test do
    system "#{bin}/tv", "--version"
  end
end
