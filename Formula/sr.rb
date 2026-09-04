class Sr < Formula
  desc "A simple mass search & replace tool"
  homepage "https://github.com/nvie/sr#readme"
  url "https://github.com/nvie/sr/releases/download/v0.2.0/sr-0.2.0-mac.tar.gz"
  sha256 "22ef2132836bc982e1739a9a691e1f14ad40f59a6ad0082c61426a184d4bcde1"
  version "0.2.0"

  def install
    bin.install "sr"
  end
end
