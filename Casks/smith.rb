cask "smith" do
  version "0.3.1"
  sha256 "da405b1970b3a7a3ec7b9a15c8b119e786e2bbd78cb5e20de5416b829479b732"

  url "https://github.com/tomashrdlicka/homebrew-smith/releases/download/v#{version}/Smith-#{version}-arm64.dmg"
  name "Smith"
  desc "AI coding agent workbench"
  homepage "https://github.com/tomashrdlicka/smith"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Smith.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Smith.app"]
  end

  zap trash: [
    "~/Library/Application Support/Smith",
    "~/Library/Caches/com.smith.app",
    "~/Library/Preferences/com.smith.app.plist",
  ]
end
