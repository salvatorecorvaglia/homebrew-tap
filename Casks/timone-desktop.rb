cask "timone-desktop" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "3d0a3c7a245dfafe080693227921e114e791627f0dba128ed073afb013ba792d",
         intel: "23f06f061573d50d79b8fef568838400df4b69926be1999deb2e73c9b1435281"

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
