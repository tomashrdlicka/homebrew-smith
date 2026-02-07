cask "smith-app" do
  version "0.2.0"
  sha256 "1ed56fc6ab381b60acc7964b130735705a02e3d0a90554725574a991e4a8e3a4"

  url "https://github.com/tomashrdlicka/homebrew-smith/releases/download/v#{version}/Smith_#{version}_aarch64.dmg"
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

    FIRST RUN: Build the required Docker image:
      cd "/Applications/Smith.app/Contents/Resources/_up_/docker"
      docker build -t smith-agent:latest .

    On first launch, macOS may show "unidentified developer" warning.
    Right-click the app and select "Open" to bypass, or run:
      xattr -cr /Applications/Smith.app

    Learn more: https://trysmith.dev
  EOS
end
