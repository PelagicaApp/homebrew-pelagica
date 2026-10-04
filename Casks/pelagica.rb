cask "pelagica" do
  version "4.11.2"
  sha256 "1d5b539eecb59825688d8fe5c7e3798c2d55f87f941ff9280a206bad98c90083"

  url "https://github.com/PelagicaApp/pelagica/releases/download/#{version}/pelagica-macos-arm64-#{version}.dmg"
  name "Pelagica"
  desc "Client for Jellyfin media servers"
  homepage "https://github.com/PelagicaApp/pelagica"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Pelagica.app"

  zap trash: [
    "~/Library/Application Support/Pelagica",
    "~/Library/Caches/app.pelagica.desktop",
    "~/Library/HTTPStorages/app.pelagica.desktop",
    "~/Library/Preferences/app.pelagica.desktop.plist",
    "~/Library/Saved Application State/app.pelagica.desktop.savedState",
    "~/Library/WebKit/app.pelagica.desktop",
  ]
end