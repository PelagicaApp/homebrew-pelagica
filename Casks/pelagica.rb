cask "pelagica" do
  version "4.13.0"
  sha256 "1d52d91f64fe969d60f84f5d20a45e7aa83753e9b0164de40355904bdb7441a9"

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