cask "smith" do
  version "0.2.1"
  sha256 "938a7a73302b4183455cc50392a595f3acc712c2ca4e8f2f0680e8eb5dcf4bd9"

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
