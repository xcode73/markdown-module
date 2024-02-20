// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "markdown-module",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "MarkdownModule", targets: ["MarkdownModule"]),
    ],
    dependencies: [
        .package(url: "https://github.com/xcode73/feather-core", .branch("test-dev")),
        .package(url: "https://github.com/JohnSundell/Ink", from: "0.6.0"),
    ],
    targets: [
        .target(name: "MarkdownModule", dependencies: [
            .product(name: "Feather", package: "feather-core"),
            .product(name: "Ink", package: "Ink"),
        ],
        resources: [
//            .copy("Bundle"),
        ]),
    ]
)
