class Sr < Formula
  desc "A simple mass search & replace tool"
  homepage "https://github.com/nvie/sr#readme"
  url "https://github.com/nvie/sr/releases/download/v0.1.0/sr-0.1.0-mac.tar.gz"
  sha256 "4c8a0529bebbcf7e84252c497b72697496d6a3d7a89efad8e8a9015640181a71"
  version "0.1.0"

  def install
    bin.install "sr"
  end
end
