// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChainValid",
    platforms: [.iOS(.v12), .macOS(.v10_13), .watchOS(.v4), .tvOS(.v12)],
    products: [
        .library(
            name: "ChainValid",
            targets: ["ChainValid"]),
    ],
    targets: [
        .target(
            name: "ChainValid"),
        .testTarget(
            name: "ChainValidTests",
            dependencies: ["ChainValid"]
        ),
    ]
)
