cask "pelagica" do
  version "4.17.0"
  sha256 "30103a65f4a97eca42090ee67f49388039cc1a6eb30ede9cf8c5faf2b48930da"

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