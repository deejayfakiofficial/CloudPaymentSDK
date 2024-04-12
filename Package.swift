// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CloudPayments",
    platforms: [
            .iOS(.v14),],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CloudPayments",
            targets: ["CloudPayments"]),
    ],
    
    dependencies: [
        .package(url: "https://github.com/deejayfakiofficial/CloudPaymentNetworkingIntaro.git", from: "1.5.1")
    ],
    
    targets: [
        .target(
            name: "CloudPayments",
            dependencies: ["CloudPaymentNetworkingIntaro"],
            path: "sdk",
            resources: [.process("../Resources")]),
    ]
)
