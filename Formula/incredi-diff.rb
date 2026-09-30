class IncrediDiff < Formula
  desc "Incremental code review in your terminal"
  homepage "https://github.com/nvie/homebrew-tap#readme"
  url "https://github.com/nvie/homebrew-tap/releases/download/incredi-diff-v0.4.1/incredi-diff-0.4.1-arm64-macos.tar.gz"
  version "0.4.1"
  sha256 "cdea469b0e855b8829c676e79d1121b2e668b9a4b82b0eac775592a84ceedb72"
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
