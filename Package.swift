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
        .package(url: "https://github.com/binarybirds/feather-core", from: "1.0.0-beta"),
        .package(url: "https://github.com/JohnSundell/Ink", from: "0.5.0"),
        
        .package(url: "https://github.com/vapor/fluent-sqlite-driver", from: "4.0.0"),
        .package(url: "https://github.com/binarybirds/liquid-local-driver", from: "1.2.0-beta"),
    ],
    targets: [
        .target(name: "MarkdownModule", dependencies: [
            .product(name: "FeatherCore", package: "feather-core"),
            .product(name: "Ink", package: "Ink"),
        ]),
        .target(name: "Feather", dependencies: [
            .product(name: "FeatherCore", package: "feather-core"),
            
            .product(name: "FluentSQLiteDriver", package: "fluent-sqlite-driver"),
            .product(name: "LiquidLocalDriver", package: "liquid-local-driver"),
            
            .target(name: "MarkdownModule"),
        ]),
        .testTarget(name: "MarkdownModuleTests", dependencies: [
            .target(name: "MarkdownModule"),
        ])
    ]
)
