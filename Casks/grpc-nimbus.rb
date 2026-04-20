cask "grpc-nimbus" do
  version "2026.16.0"
  sha256 arm:   "76cb6f2fbb13843faec43ce832518e1e7b55f5f4e347c5e2f3c2e2d2914cc883",
         intel: "6f7d1c7368add79104cb491e1390c4db3c08080d1ef48934e80bcfbd221b31a7"

  url "https://github.com/CosmicMunkey/grpc-nimbus/releases/download/v#{version}/grpc-nimbus-v#{version}-darwin-#{arch}.zip",
      verified: "github.com/CosmicMunkey/grpc-nimbus/"

  name "GRPC Nimbus"
  desc "Cross-platform desktop gRPC client with protoset support"
  homepage "https://github.com/CosmicMunkey/grpc-nimbus"

  app "GRPC Nimbus.app"

  zap trash: [
    "~/Library/Application Support/grpc-nimbus",
    "~/Library/Preferences/grpc-nimbus.plist",
    "~/Library/Saved Application State/grpc-nimbus.savedState",
  ]
end
