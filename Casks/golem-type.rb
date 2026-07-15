cask "golem-type" do
  arch arm: "arm64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "18b57a47720bdd0a0ac0327ee71472ddee6e46a2543425b70b92950e654012c9",
         intel: "b2b1357bef150d942f64f2649bcdfbc87db3e06c9c5f70a45d06862df992b4d6"

  url "https://github.com/dontoreve/golem-releases/releases/download/v#{version}/GolemType-#{arch}.dmg",
      verified: "github.com/dontoreve/golem-releases/"
  name "Golem Type"
  desc "Voice-to-text dictation that types wherever your cursor is"
  homepage "https://golemtype.com/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Golem.app"

  zap trash: [
    "~/Library/Application Support/Golem",
    "~/Library/Caches/com.cattory.golemtype",
    "~/Library/Logs/Golem",
    "~/Library/Preferences/com.cattory.golemtype.plist",
    "~/Library/Saved Application State/com.cattory.golemtype.savedState",
  ]
end
