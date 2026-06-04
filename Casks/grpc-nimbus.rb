cask "grpc-nimbus" do
  version "1.2.2"

  on_arm do
    url "https://github.com/CosmicMunkey/grpc-nimbus/releases/download/v#{version}/grpc-nimbus-v#{version}-darwin-arm64.zip",
        verified: "github.com/CosmicMunkey/grpc-nimbus/"
    sha256 "75836dbc6bb8da2cbe12ee6acf65aeab44d0b314749e4e3fa19cf610a7e6189c"  # arm64
  end

  on_intel do
    url "https://github.com/CosmicMunkey/grpc-nimbus/releases/download/v#{version}/grpc-nimbus-v#{version}-darwin-x86_64.zip",
        verified: "github.com/CosmicMunkey/grpc-nimbus/"
    sha256 "708cfbb5ddc197a040ad38b49731916f4228c68e1494c4697bd0e35800b43bba"  # x86_64
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
