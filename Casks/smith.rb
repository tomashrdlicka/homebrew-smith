cask "smith" do
  version "0.2.1"
  sha256 "7aecffd0dd8dddd6993caeb440991e7d58d9c0a8f9d73230ef68f5afb39cf6b8"

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
