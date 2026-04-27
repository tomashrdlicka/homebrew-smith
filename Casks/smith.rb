cask "smith" do
  version "0.3.15"
  sha256 "ce870dbc6caf1114bc23977598c5904c6bfd3e9d2737e46e720f6c782f3b46c9"

  url "https://github.com/tomashrdlicka/homebrew-smith/releases/download/v#{version}/Smith-#{version}-arm64.dmg"
  name "Smith"
  desc "AI coding agent workbench"
  homepage "https://trysmith.dev"

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
