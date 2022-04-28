// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StatLanguage",
    dependencies: [
        .package(name: "Antlr4", url: "https://github.com/antlr/antlr4", from: "4.10.1")
    ],
    targets: [
        .executableTarget(
            name: "StatLanguage",
            dependencies: ["Antlr4"]),
        .testTarget(
            name: "StatLanguageTests",
            dependencies: ["StatLanguage", "Antlr4"]),
    ]
)
