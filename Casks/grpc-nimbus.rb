cask "grpc-nimbus" do
  version "2026.17.5"

  on_arm do
    url "https://github.com/CosmicMunkey/grpc-nimbus/releases/download/v#{version}/grpc-nimbus-v#{version}-darwin-arm64.zip",
        verified: "github.com/CosmicMunkey/grpc-nimbus/"
    sha256 "8b3c1d849aba455e57b650b076fc3a80ea1f396034bcb45ee36b1f211bab3681"  # arm64
  end

  on_intel do
    url "https://github.com/CosmicMunkey/grpc-nimbus/releases/download/v#{version}/grpc-nimbus-v#{version}-darwin-x86_64.zip",
        verified: "github.com/CosmicMunkey/grpc-nimbus/"
    sha256 "b422b2d81458244d3d724fb73f1a4d2f84aa6ba126c33db9f67beb0b37a69c84"  # x86_64
  end

  name "GRPC Nimbus"
  desc "Cross-platform desktop gRPC client with protoset support"
  homepage "https://github.com/CosmicMunkey/grpc-nimbus"

  app "GRPC Nimbus.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/GRPC Nimbus.app"]
  end

  zap trash: [
    "~/Library/Application Support/grpc-nimbus",
    "~/Library/Preferences/grpc-nimbus.plist",
    "~/Library/Saved Application State/grpc-nimbus.savedState",
  ]
end
