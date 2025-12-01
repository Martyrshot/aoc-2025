// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Advent of code 2025",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.2.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "AoC",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                "Day1",
            ]
        ),
        .target(name: "Utilities", dependencies: [.product(name: "ArgumentParser", package: "swift-argument-parser")]),
        .target(name: "Day1", dependencies: [.product(name: "ArgumentParser", package: "swift-argument-parser"), "Utilities"]),

    ]
)
