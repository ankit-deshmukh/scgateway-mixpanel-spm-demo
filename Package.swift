// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "scgateway-mixpanel-spm",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "scgateway-mixpanel-spm",
            targets: ["scgateway-mixpanel-spm"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/mixpanel/mixpanel-swift", from: "3.5.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "scgateway-mixpanel-spm",
            dependencies: [.product(name: "Mixpanel", package: "mixpanel-swift")]),
        .testTarget(
            name: "scgateway-mixpanel-spmTests",
            dependencies: ["scgateway-mixpanel-spm"]),
    ]
)
