cask "timone-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "42ab6036d287328dc00856203b1088681667edd201abd57b2d7a3fb2a6f2b988",
         intel: "f67a95e896f33af8cb50bbc68ecbdc2eeddbeb55e49156d1e203a1d886d1b927"

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
