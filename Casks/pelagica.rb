cask "pelagica" do
  version "4.8.0"
  sha256 "b34494ec0526e675e989e3f7edaae6841f49099628b0586b9ccfaf7f02fba57d"

  url "https://github.com/PelagicaApp/pelagica/releases/download/#{version}/pelagica-macos-arm64.dmg"
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

  caveats <<~EOS
    Pelagica is not signed with an Apple Developer ID or notarised, so macOS
    will refuse to open it until the quarantine attribute is removed:

      xattr -dr com.apple.quarantine "/Applications/Pelagica.app"
  EOS
end
