cask "grpc-nimbus" do
  version "2026.17.0"
  sha256 arm:   "e7b8b52132f63f52e32563886404bde01b3ba245f202ee7ed638a8a86ba6a5ba",
         intel: "0a427a56f418f542bf7ac3b564623975fea0a818d8c13b0588951b2794778d46"

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
