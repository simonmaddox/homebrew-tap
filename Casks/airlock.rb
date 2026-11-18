cask "airlock" do
  version "1.0.3,202611181101"
  sha256 "416c4909cffa277831c9862459f3ddb39674ff6564c7c18e42da9e18758652ea"

  url "https://downloads.airlock.sorrel.systems/Airlock-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Airlock"
  desc "Run coding agents in disposable virtual machines"
  homepage "https://airlock.sorrel.systems/"

  livecheck do
    url "https://airlock.sorrel.systems/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Airlock.app"
  binary "#{appdir}/Airlock.app/Contents/Resources/airlock"

  zap trash: [
    "~/Library/Application Scripts/com.simonmaddox.Airlock",
    "~/Library/Application Scripts/com.simonmaddox.Airlock.cli",
    "~/Library/Application Scripts/E33B9QJQ8X.com.simonmaddox.airlock",
    "~/Library/Caches/com.simonmaddox.Airlock",
    "~/Library/Containers/com.simonmaddox.Airlock",
    "~/Library/Containers/com.simonmaddox.Airlock.cli",
    "~/Library/Group Containers/E33B9QJQ8X.com.simonmaddox.airlock",
  ]
end
