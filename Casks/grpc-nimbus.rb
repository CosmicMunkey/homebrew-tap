cask "grpc-nimbus" do
  version "1.3.0"

  on_arm do
    url "https://github.com/CosmicMunkey/grpc-nimbus/releases/download/v#{version}/grpc-nimbus-v#{version}-darwin-arm64.zip",
        verified: "github.com/CosmicMunkey/grpc-nimbus/"
    sha256 "bc682ef6ac40f2f874eb96fb464d4de8e572528c1eba3c06a7c23e3cc358990e"  # arm64
  end

  on_intel do
    url "https://github.com/CosmicMunkey/grpc-nimbus/releases/download/v#{version}/grpc-nimbus-v#{version}-darwin-x86_64.zip",
        verified: "github.com/CosmicMunkey/grpc-nimbus/"
    sha256 "22513c49616b2597045595a3274fa963c6ec52c59698c3ed583b57f6c03c6271"  # x86_64
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
