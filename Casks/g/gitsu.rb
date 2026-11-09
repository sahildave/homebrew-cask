cask "gitsu" do
  version :latest
  sha256 :no_check

  url "https://dash.gitsu.app/api/desktop-download/macos"
  name "Gitsu"
  desc "Desktop client for GitHub Projects"
  homepage "https://gitsu.app/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :catalina"

  app "Gitsu.app"

  zap trash: [
    "~/Library/Application Support/co.coduo.gitsu",
    "~/Library/Caches/co.coduo.gitsu",
    "~/Library/Preferences/co.coduo.gitsu.plist",
    "~/Library/WebKit/co.coduo.gitsu",
  ]
end
