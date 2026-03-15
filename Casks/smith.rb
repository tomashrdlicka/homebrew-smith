cask "smith" do
  version "0.2.1"
  sha256 "6b1098fc52997f9b336b23546926c1e7cd90f56193d14e48848ec8ae7dabe01e"

  url "https://github.com/tomashrdlicka/homebrew-smith/releases/download/v#{version}/Smith-#{version}-arm64.dmg"
  name "Smith"
  desc "AI coding agent workbench"
  homepage "https://github.com/tomashrdlicka/smith-electron"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Smith.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Smith.app"]
  end

  zap trash: [
    "~/Library/Application Support/smith-release",
    "~/Library/Caches/com.smith.app",
    "~/Library/Preferences/com.smith.app.plist",
  ]
end
