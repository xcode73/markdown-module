// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "markdown-module",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "MarkdownModule", targets: ["MarkdownModule"]),
    ],
    dependencies: [
        .package(url: "https://github.com/binarybirds/feather-core", .branch("main")),
        .package(url: "https://github.com/JohnSundell/Ink", from: "0.5.0"),
    ],
    targets: [
        .target(name: "MarkdownModule",
                dependencies: [
                    .product(name: "FeatherCore", package: "feather-core"),
                    .product(name: "Ink", package: "Ink"),
                ]
        ),
        .testTarget(name: "MarkdownModuleTests",
                    dependencies: [
                        .target(name: "MarkdownModule"),
                    ])
    ]
)
