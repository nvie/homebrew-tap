class IncrediDiff < Formula
  desc "Incremental code review in your terminal"
  homepage "https://github.com/nvie/homebrew-tap#readme"
  url "https://github.com/nvie/homebrew-tap/releases/download/incredi-diff-v0.1.0/incredi-diff-0.1.0-arm64-macos.tar.gz"
  version "0.1.0"
  sha256 "c50cd7d2b2c4f531a9ae995dabc2c286777d918eabc06f9909144fa793048cf0"
  license "MIT"

  # Only an arm64 build is published, so say so rather than installing
  # something that cannot run.
  depends_on arch: :arm64
  depends_on "git"

  def install
    bin.install "incredi-diff"
  end

  test do
    assert_match "incredi-diff", shell_output("#{bin}/incredi-diff --help")
  end
end
