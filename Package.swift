// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChainValid",
    platforms: [.iOS(.v12), .macOS(.v13), .watchOS(.v4), .tvOS(.v12)],
    products: [
        .library(
            name: "ChainValid",
            targets: ["ChainValid"]),
    ],
    targets: [
        .target(
            name: "ChainValid",
            swiftSettings: [.unsafeFlags([
                "-Xfrontend", "-warn-concurrency",
                "-Xfrontend", "-enable-actor-data-race-checks",
                "-enable-bare-slash-regex",
            ])]
        ),
        .testTarget(
            name: "ChainValidTests",
            dependencies: ["ChainValid"],
            swiftSettings: [.unsafeFlags([
                "-Xfrontend", "-warn-concurrency",
                "-Xfrontend", "-enable-actor-data-race-checks",
                "-enable-bare-slash-regex",
            ])]
        ),
    ]
)

