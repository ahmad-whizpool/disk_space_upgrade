// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "disk_space_upgrade",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(
            name: "disk-space-upgrade",
            targets: ["disk_space_upgrade"]
        ),
        .library(
            name: "disk_space_upgrade",
            targets: ["disk_space_upgrade"]
        )
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "disk_space_upgrade",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            resources: [
                .process("PrivacyInfo.xcprivacy")
            ]
        )
    ]
)
