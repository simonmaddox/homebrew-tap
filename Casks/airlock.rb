cask "airlock" do
  version "1.0.4,202611181913"
  sha256 "aa1313eb49a6242babbabb4f2ccd16519317bf5ea39e36e69e2a5608c46afeb3"

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
