cask "efclip" do
  version "1.0.4"
  sha256 "358d97d1e352a800cf1d634167dab7a8057e0bda8b93197500278ca14273bf44"

  url "https://cdn.efkey.app/efclip/EFClip-#{version}.dmg"
  name "EFClip"
  desc "Clipboard history in the menu bar, synced with the EFKey iPhone keyboard"
  homepage "https://efclip.app/"

  livecheck do
    url "https://efclip.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "EFClip.app"

  uninstall quit: "eu.eef.efclip"

  zap trash: [
    "~/Library/Application Scripts/eu.eef.efclip",
    "~/Library/Caches/eu.eef.efclip",
    "~/Library/Containers/eu.eef.efclip",
  ]
end
