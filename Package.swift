// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KituraOpenAPI",
    products: [
        .library(
            name: "KituraOpenAPI",
            targets: ["KituraOpenAPI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/Kitura.git", from: "2.6.0"),
        .package(url: "https://github.com/IBM-Swift/Swift-cfenv.git", from: "6.0.0"),
        .package(url: "https://github.com/IBM-Swift/LoggerAPI.git", from: "1.7.3"),
        .package(url: "https://github.com/IBM-Swift/Kitura-StencilTemplateEngine.git", from: "1.10.0"),
    ],
    targets: [
        .target(
            name: "KituraOpenAPI",
            dependencies: ["Kitura", "KituraStencil", "CloudFoundryEnv", "LoggerAPI"]),
        .testTarget(
            name: "KituraOpenAPITests",
            dependencies: ["KituraOpenAPI", "Kitura"]),
    ]
)
