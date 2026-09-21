class IncrediDiff < Formula
  desc "Incremental code review in your terminal"
  homepage "https://github.com/nvie/homebrew-tap#readme"
  url "https://github.com/nvie/homebrew-tap/releases/download/incredi-diff-v0.2.0/incredi-diff-0.2.0-arm64-macos.tar.gz"
  version "0.2.0"
  sha256 "66372c783b1735f09c996b00e22c954d12faceacd6e82379a37cf0a6b321e9fc"
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
