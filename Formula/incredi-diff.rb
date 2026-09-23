class IncrediDiff < Formula
  desc "Incremental code review in your terminal"
  homepage "https://github.com/nvie/homebrew-tap#readme"
  url "https://github.com/nvie/homebrew-tap/releases/download/incredi-diff-v0.3.1/incredi-diff-0.3.1-arm64-macos.tar.gz"
  version "0.3.1"
  sha256 "3e68cfc395029359a042e9b1fa1030a009901f2980a202ee3b93ff73eb79998e"
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
