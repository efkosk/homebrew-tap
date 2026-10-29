cask "efclip" do
  version "1.0.3"
  sha256 "2e0cc081a09ba78c1a5924d0166849a371957c6301c4569e46684f5228b5b0fa"

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
