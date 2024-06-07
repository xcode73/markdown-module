// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "markdown-module",
    platforms: [
       .macOS(.v12)
    ],
    products: [
        .library(name: "MarkdownModule", targets: ["MarkdownModule"]),
    ],
    dependencies: [
        .package(path: "../feather-core"),
//        .package(url: "https://github.com/xcode73/feather-core.git", branch: "main"),
        .package(url: "https://github.com/JohnSundell/Ink.git", from: "0.6.0"),
    ],
    targets: [
        .target(name: "MarkdownModule", dependencies: [
            .product(name: "FeatherCore", package: "feather-core"),
            .product(name: "Ink", package: "Ink"),
        ],
        resources: [
            .copy("Bundle"),
        ]),
    ]
)
