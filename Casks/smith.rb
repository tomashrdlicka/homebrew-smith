cask "smith" do
  version "0.2.1"
  sha256 "983b8731ebbec8a9a026219af67d44a81a4794248f66799af66a77487f0588dd"

  url "https://github.com/tomashrdlicka/homebrew-smith/releases/download/v#{version}/Smith-#{version}-arm64.dmg"
  name "Smith"
  desc "AI coding agent workbench"
  homepage "https://github.com/tomashrdlicka/smith-electron"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Smith.app"

  zap trash: [
    "~/Library/Application Support/Smith",
    "~/Library/Caches/com.smith.app",
    "~/Library/Preferences/com.smith.app.plist",
  ]
end
