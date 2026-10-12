cask "klavuni" do
  version "1.3"
  sha256 "3fb35aa42eb1e90230dd1aa5edbc6185727c9a5c3353d4ea826495517d3b54a1"

  url "https://klavuni.com/downloads/Klavuni-#{version}.dmg"
  name "Klavuni"
  desc "Keyboard layout fixer (Ukrainian and English) and clipboard manager"
  homepage "https://klavuni.com/"

  livecheck do
    url "https://klavuni.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Klavuni.app"

  uninstall quit:       "com.awesomenick.klavuni",
            login_item: "Klavuni"

  zap trash: [
    "~/Library/Application Support/Klavuni",
    "~/Library/Caches/com.awesomenick.klavuni",
    "~/Library/HTTPStorages/com.awesomenick.klavuni",
    "~/Library/Preferences/com.awesomenick.klavuni.plist",
  ]
end
