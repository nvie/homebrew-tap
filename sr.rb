class Sr < Formula
  desc "A simple mass search & replace tool"
  homepage "https://github.com/nvie/sr#readme"
  url "https://github.com/nvie/sr/releases/download/v0.1.1/sr-0.1.1-mac.tar.gz"
  sha256 "febce8f899bd199f7fb05954dd8f6a0a667074c86a242b6a6d5cac86ffa7f889"
  version "0.1.1"

  def install
    bin.install "sr"
  end
end
