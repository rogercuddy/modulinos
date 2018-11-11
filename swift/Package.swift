// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "Modulino",
    products: [
        .executable(name: "modulino", targets: ["modulino"]),
        .executable(name: "modulino-test", targets: ["modulino-test"]),
        .library(name: "ModulinoFramework", targets: ["ModulinoFramework"])
    ],
    dependencies: [],
    targets: [
        .target(name: "modulino", dependencies: ["ModulinoFramework"]),
        .target(name: "modulino-test", dependencies: ["ModulinoFramework"]),
        .target(name: "ModulinoFramework", dependencies: [])
    ]
)
