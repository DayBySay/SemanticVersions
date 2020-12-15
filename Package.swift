// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SemanticVersions",
    dependencies: [
        .package(name: "SwiftPM", url: "https://github.com/apple/swift-package-manager.git", .exact("0.5.0")),
    ],
    targets: [
        .target(
            name: "SemanticVersions",
            dependencies: [
                .product(name: "SPMUtility", package: "SwiftPM")
            ]),
        .testTarget(
            name: "SemanticVersionsTests",
            dependencies: ["SemanticVersions"]),
    ]
)
