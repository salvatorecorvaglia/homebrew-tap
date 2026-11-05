cask "timone-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "a49b7eafe53c75a163e564ad613b9be8c9244010bd4bdca575a0ab373933eb4d",
         intel: "55560ab29a223efbb24747f7fe0024dbf81a250e4c1db28496f480c1a5b4f6d0"

  url "https://github.com/salvatorecorvaglia/timone/releases/download/v#{version}/timone-desktop_#{version}_mac_#{arch}.dmg"
  name "Timone Desktop"
  desc "Read-only Kubernetes insights and diagnostics"
  homepage "https://github.com/salvatorecorvaglia/timone"

  livecheck do
    skip "This tap automatically pulls checksum-verified release manifests"
  end

  depends_on macos: ">= :ventura"

  app "Timone.app"

  caveats <<~EOS
    This release has no Apple Developer ID signing or notarization.
    macOS security policies may prevent it from opening.
  EOS
end
