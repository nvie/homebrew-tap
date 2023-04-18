class GitToolbelt < Formula
  desc "Suite of useful Git commands"
  homepage "https://github.com/nvie/git-toolbelt#readme"
  url "https://github.com/nvie/git-toolbelt/archive/v1.8.4.tar.gz"
  sha256 "a703d964775b978564735471c6d004611915c5cf5bdbd4f49e546aff7fb0c418"

  depends_on "coreutils"  # For the "grealpath" executable
  depends_on "fzf"        # Needed for "git-fixup-with" only

  def install
    bin.install "git-active-branches"
    bin.install "git-branches-containing"
    bin.install "git-cherry-pick-to"
    bin.install "git-cleanup"
    bin.install "git-cleave"
    bin.install "git-commit-to"
    bin.install "git-committer-info"
    bin.install "git-conflicts"
    bin.install "git-contains"
    bin.install "git-current-branch"
    bin.install "git-delouse"
    bin.install "git-diff-since"
    bin.install "git-drop-local-changes"
    bin.install "git-fixup"
    bin.install "git-fixup-with"
    bin.install "git-has-local-changes"
    bin.install "git-has-local-commits"
    bin.install "git-initial-commit"
    bin.install "git-is-ancestor"
    bin.install "git-is-clean"
    bin.install "git-is-dirty"
    bin.install "git-is-headless"
    bin.install "git-is-repo"
    bin.install "git-local-branch-exists"
    bin.install "git-local-branches"
    bin.install "git-local-commits"
    bin.install "git-main-branch"
    bin.install "git-merge-status"
    bin.install "git-merged"
    bin.install "git-merges-cleanly"
    bin.install "git-modified"
    bin.install "git-push-current"
    bin.install "git-recent-branches"
    bin.install "git-relative-path"
    bin.install "git-remote-branch-exists"
    bin.install "git-remote-branches"
    bin.install "git-remote-tracking-branch"
    bin.install "git-repo"
    bin.install "git-root"
    bin.install "git-separator"
    bin.install "git-sha"
    bin.install "git-shatter-by-file"
    bin.install "git-show-skipped"
    bin.install "git-skip"
    bin.install "git-spinoff"
    bin.install "git-stage-all"
    bin.install "git-stash-everything"
    bin.install "git-sync-commit-date"
    bin.install "git-tag-exists"
    bin.install "git-trash"
    bin.install "git-undo-commit"
    bin.install "git-undo-merge"
    bin.install "git-unmerged"
    bin.install "git-unskip"
    bin.install "git-unstage-all"
    bin.install "git-update-all"
    bin.install "git-wip"
    bin.install "git-workon"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test git-toolbelt`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
