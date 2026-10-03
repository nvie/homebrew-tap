# Homebrew cask for Viewdown.
#
#   brew install --cask nvie/tap/viewdown
#
# The version and the digest below are read together, and the digest only
# exists once `make release` in the viewdown repo has built the bytes. They are
# edited as one change, after the build.
cask "viewdown" do
  version "1.0.2"
  # From the SHA256SUMS line `make release` prints. `:no_check` would defeat the
  # point: the digest is what proves brew got the bytes that were built.
  sha256 "870892cca2b50a004aa6db952218143c9d85016d5bef3f7e10725166b0e739e4"

  url "https://dl.viewdown.app/bin/Viewdown_#{version}_universal.dmg"
  name "Viewdown"
  desc "Live-reloading Markdown viewer"
  homepage "https://viewdown.app/"

  # The same manifest the app's updater reads, so brew and the app can never
  # disagree about what the current version is. The `0` is the major-version
  # channel and moves to `1` at 1.0 — it is not part of the version number.
  livecheck do
    url "https://dl.viewdown.app/channel/0/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  # Viewdown updates itself, so brew must not treat a version it did not install
  # as a broken installation. Without this, `brew upgrade` reinstalls over an app
  # that already updated, and `brew outdated` reports one that did not.
  auto_updates true
  depends_on macos: :ventura

  app "Viewdown.app"
  binary "#{appdir}/Viewdown.app/Contents/Resources/viewdown"

  zap trash: [
    "~/Library/Application Support/com.nvie.viewdown",
    "~/Library/Caches/com.nvie.viewdown",
    "~/Library/Preferences/com.nvie.viewdown.plist",
    "~/Library/Saved Application State/com.nvie.viewdown.savedState",
    "~/Library/WebKit/com.nvie.viewdown",
  ]
end
