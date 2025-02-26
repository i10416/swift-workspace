// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Tools",
    dependencies: [
        .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.49.0")
    ]
)
