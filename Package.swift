// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyCustomFramework",
    platforms: [
        .macOS(.v12), .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyCustomFramework",
            targets: ["MyCustomFramework"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
//        .target(
//            name: "MyCustomFramework"),
//        .testTarget(
//            name: "MyCustomFrameworkTests",
//            dependencies: ["MyCustomFramework"]),
        
        .binaryTarget(
            name: "MyCustomFramework",
            path: "./Sources/CustomFramework.xcframework"
        )
    ]
)
