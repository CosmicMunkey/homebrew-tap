cask "grpc-nimbus" do
  version "2026.17.1"
  sha256 arm:   "995a7203da789ef18455b1b537524f9f5659d24867891d89207dae76fd9f2e85",
         intel: ""

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
