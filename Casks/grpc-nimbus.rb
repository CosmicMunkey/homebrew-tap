cask "grpc-nimbus" do
  version "1.3.6"

  on_arm do
    url "https://github.com/CosmicMunkey/grpc-nimbus/releases/download/v#{version}/grpc-nimbus-v#{version}-darwin-arm64.zip",
        verified: "github.com/CosmicMunkey/grpc-nimbus/"
    sha256 "bb4672ca8b6c90250b57f8a0d7161b2cee51b9ad09898bd958fb72701ed60e13"  # arm64
  end

  on_intel do
    url "https://github.com/CosmicMunkey/grpc-nimbus/releases/download/v#{version}/grpc-nimbus-v#{version}-darwin-x86_64.zip",
        verified: "github.com/CosmicMunkey/grpc-nimbus/"
    sha256 "a12074f37d0341154b06a20d2772da2329ed55ef392e4d45c71d15c4cffde71d"  # x86_64
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
