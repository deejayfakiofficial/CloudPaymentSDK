// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CloudPayments",
    platforms: [
            .iOS(.v14),],
    products: [
        .library(
            name: "CloudPayments",
            targets: ["CloudPayments"]),
    ],
    
    dependencies: [
        .package(name: "CloudpaymentsNetworking",
                 url: "https://github.com/deejayfakiofficial/CloudPaymentNetworkingIntaro.git",
                 from: "3.0.0")
    ],
    
    targets: [
        .target(
            name: "CloudPayments",
            dependencies: ["CloudpaymentsNetworking"],
            path: "sdk",
            resources: [.process("../Resources")]),
    ]
)
