cask "orcaslicer" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.0-rc"
  sha256 arm: "cbbfb2823be7ab3521abfc0d78683be5d2eea87fd017a63aa903f3c433de1860"
  #        intel: "0dc96b0b53ae9b7d09956fde812436302dcc01db7757b25ee6b552597911ed47"

  url "https://github.com/SoftFever/OrcaSlicer/releases/download/v#{version}/OrcaSlicer_Mac_#{arch}_V#{version}.dmg"
  name "Orca Slicer"
  desc "G-code generator for 3D printers"
  homepage "https://github.com/SoftFever/OrcaSlicer"

  app "OrcaSlicer.app"

  zap trash: [
    "~/Library/Application Support/OrcaSlicer",
    "~/Library/Caches/com.softfever3d.orca-slicer",
    "~/Library/HTTPStorages/com.softfever3d.orcaslicer.binarycookies",
    "~/Library/Preferences/com.softfever3d.orca-slicer.plist",
    "~/Library/Saved Application State/com.softfever3d.orca-slicer.savedState",
    "~/Library/WebKit/com.softfever3d.orca-slicer",
  ]
end
