cask "smith" do
  version "0.3.3"
  sha256 "76cdae01db54c14ce57184a69a2507d2f3378b1623c186d83fca04010db9bb87"

  url "https://github.com/tomashrdlicka/smith/releases/download/v#{version}/Smith-#{version}-arm64.dmg"
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
