cask "timone-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "0a2c8e6fa3d1dad63f0965e96afd2c978d6d34b882e1043ca3055e80ceedf266",
         intel: "db25d9f057e7487a3d9df2eed62373b19dd047aab19a194050ef111c04df8fd0"

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
