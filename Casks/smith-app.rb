cask "smith-app" do
  version "0.1.0"
  sha256 "PLACEHOLDER"  # Will be updated by CI

  url "https://github.com/tomashrdlicka/smith_app/releases/download/v#{version}/Smith_#{version}_aarch64.dmg"
  name "Smith"
  desc "Orchestrate multiple Claude Code AI agents in isolated Docker containers"
  homepage "https://trysmith.dev"

  depends_on macos: ">= :catalina"
  depends_on arch: :arm64

  app "Smith.app"

  zap trash: [
    "~/.smith",
  ]

  caveats <<~EOS
    Smith by Ohkey requires Docker or OrbStack to run containers.
    Install with: brew install --cask docker

    On first launch, macOS may show "unidentified developer" warning.
    Right-click the app and select "Open" to bypass.

    Learn more: https://trysmith.dev
  EOS
end
