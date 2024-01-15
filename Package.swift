// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "WebAuthnKit",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "WebAuthnKit",
            targets: ["WebAuthnKit"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/mxcl/PromiseKit.git", exact: "6.13.1"),
        .package(url: "https://github.com/teamprex/KeychainAccess.git", exact: "4.2.2"),
    ],
    targets: [
        .target(
            name: "WebAuthnKit",
            dependencies: [
                "PromiseKit",
                "KeychainAccess",
            ],
            path: "WebAuthnKit/Sources"
        )
    ]
)
