class Sr < Formula
  desc "A simple mass search & replace tool"
  homepage "https://github.com/nvie/sr#readme"
  url "https://github.com/nvie/sr/releases/download/v0.1.0/sr-0.1.0-mac.tar.gz"
  sha256 "5737e30742a32999f7f86f1f39e2005aec2f3529c3b32fe776f552fc2bf75971"
  version "0.1.0"

  def install
    bin.install "sr"
  end
end
