cask "grpc-nimbus" do
  version "1.1.4"

  on_arm do
    url "https://github.com/CosmicMunkey/grpc-nimbus/releases/download/v#{version}/grpc-nimbus-v#{version}-darwin-arm64.zip",
        verified: "github.com/CosmicMunkey/grpc-nimbus/"
    sha256 "822f06d44b6f7e433887240f7acedffbecf4a4f54274a7861fb54332ebb7ae5c"  # arm64
  end

  on_intel do
    url "https://github.com/CosmicMunkey/grpc-nimbus/releases/download/v#{version}/grpc-nimbus-v#{version}-darwin-x86_64.zip",
        verified: "github.com/CosmicMunkey/grpc-nimbus/"
    sha256 "2e3663c6726e0baa0bfebe4c3a81953259eaa5727e69457edbf995d0a447d2eb"  # x86_64
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
