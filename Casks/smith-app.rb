cask "smith-app" do
  version "0.3.22"
  sha256 "6660970f472d064b3ba0d20268ca90b9efa46acc9c8e1de4af7f88c7211f9e11"

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

    If macOS shows "unidentified developer" warning, reinstall with:
      brew reinstall --cask --no-quarantine smith-app

    Learn more: https://trysmith.dev
  EOS
end
