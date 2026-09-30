class IncrediDiff < Formula
  desc "Incremental code review in your terminal"
  homepage "https://github.com/nvie/homebrew-tap#readme"
  url "https://github.com/nvie/homebrew-tap/releases/download/incredi-diff-v0.4.0/incredi-diff-0.4.0-arm64-macos.tar.gz"
  version "0.4.0"
  sha256 "6166654f04aaf11ee67aecf6b36b8555eb168faddc0bd105584ac445aa32201a"
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
