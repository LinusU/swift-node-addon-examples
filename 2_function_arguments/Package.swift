// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "FunctionArguments",
    products: [
        .library(name: "FunctionArguments", type: .dynamic, targets: ["FunctionArguments"]),
    ],
    dependencies: [
        .package(url: "https://github.com/LinusU/swift-napi-bindings", from: "1.0.0-alpha.1"),
    ],
    targets: [
        .target(name: "Trampoline", dependencies: ["NAPIC"]),
        .target(name: "FunctionArguments", dependencies: ["NAPI", "Trampoline"]),
    ]
)
