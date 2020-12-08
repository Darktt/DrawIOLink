// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let platforms: Array<SupportedPlatform> = [.macOS(.v10_10)]
private let products: Array<Product> = [.executable(name: "LinkMaker", targets: ["DrawIOLink"])]

// Dependencies declare other packages that this package depends on.
// .package(url: /* package url */, from: "1.0.0"),
private let packageDependencies: Array<Package.Dependency> = [
    .package(url: "https://github.com/apple/swift-argument-parser", .upToNextMinor(from: "0.3.0")),
]

private let targetDependencies: Array<Target.Dependency> = [
    .product(name: "ArgumentParser", package: "swift-argument-parser"),
]

// Targets are the basic building blocks of a package. A target can define a module or a test suite.
// Targets can depend on other targets in this package, and on products in packages this package depends on.
private let target = Target.target(name: "DrawIOLink", dependencies: targetDependencies)
private let testTarget = Target.testTarget(name: "DrawIOLinkTests", dependencies: ["DrawIOLink"])

let package = Package(name: "DrawIOLink", platforms: platforms, products: products, dependencies: packageDependencies, targets: [target, testTarget])
