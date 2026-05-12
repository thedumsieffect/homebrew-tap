cask "fullmark" do
  version "0.1.5"
  sha256 "5879ad996e3dd5d4a48e456ed1842ae90f28b85b6f63da235f42c87dac8fa5f5"

  url "https://github.com/thedumsieffect/fullmark/releases/download/v#{version}/FullMark_#{version}_aarch64.dmg"
  name "FullMark"
  desc "Notion-style markdown editor on plain .md files"
  homepage "https://github.com/thedumsieffect/fullmark"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "FullMark.app"

  zap trash: [
    "~/Library/Application Support/app.fullmark.desktop",
    "~/Library/Caches/app.fullmark.desktop",
    "~/Library/Preferences/app.fullmark.desktop.plist",
    "~/Library/Saved Application State/app.fullmark.desktop.savedState",
  ]
end
