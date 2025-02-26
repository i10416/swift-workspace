// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftWorkspace",
    platforms: [
        .iOS(.v18), .macOS(.v14),
    ],
    // defines final build artifacts
    products: [
        // `swift run SyncMainEntrypoint`
        .executable(
            name: "SyncMainEntrypoint",
            targets: ["SyncMainEntrypoint"]
        ),
        // `swift run AsyncMainEntrypoint`
        .executable(
            name: "AsyncMainEntrypoint",
            targets: ["AsyncMainEntrypoint"]
        ),
    ],
    // Swift Package Manager declares dependencies globally.
    dependencies: [
        // git(ssh) url example
        // .package(url: "git@github.com:ghost/nope", from: "1.2.3"),
        .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "1.0.0"),
        // dev dependencies
        .package(url: "https://github.com/swiftlang/swift-format", from: "600.0.0"),
        .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins", from: "0.57.1"),
        .package(url: "https://github.com/antlr/antlr4.git", from: "4.13.2"),
    ],
    // A list of (internal) modules that could be either public or private to outside of the package.
    // A module is a primary unit of code distribution and bin-compat.
    // Swift does not allow cutting namespaces inside "target" although it is possible to imitate
    // namespaces using nested struct(s) and enum(s).
    targets: [
        // App
        .executableTarget(
            name: "SyncMainEntrypoint",
            dependencies: [
                // Local Dependency
                .target(name: "Core"),
                .target(name: "QueryTranslator"),
            ],
            plugins: [
                .plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins"),
            ]
        ),
        .executableTarget(
            name: "AsyncMainEntrypoint",
            dependencies: [
                // Local Dependency
                .target(name: "Core"),
                .target(name: "DependencyInjectionPattern"),
            ],
            plugins: [
                .plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins"),
            ]
        ),
        // Lib
        .target(
            name: "Core",
            dependencies: [],
            plugins: [
                .plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins"),
            ]
        ),
        .target(
            name: "QueryTranslator",
            dependencies: [
                .target(name: "Core"),
                .target(name: "QueryParser"),
            ],
            plugins: []
        ),
        .target(
            name: "QueryParser",
            dependencies: [
                .product(name: "Antlr4", package: "Antlr4"),
            ],
            plugins: []
        ),
        // Lib
        .target(
            name: "DependencyInjectionPattern",
            dependencies: [
                // Pull dependencies by name from `Package > dependencies`
                //
                // Dependency Injection Pattern from pointfree.co
                // TBH, I'm not a big fan of its aggressive macro (ab)use.
                .product(name: "Dependencies", package: "swift-dependencies"),
                .product(name: "DependenciesMacros", package: "swift-dependencies"),
            ],
            plugins: [
                .plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins"),
            ]
        ),
        // Test(similar to src/test/scala/* and `% Test` scope OR integration test module)
        .testTarget(
            name: "CoreTests",
            dependencies: ["Core"],
            plugins: [
                .plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins"),
            ]
        ),
        // Build(like plugins.sbt and project/*.scala)
        .plugin(
            name: "BuildTask",
            capability: .command(
                intent: .sourceCodeFormatting(),
                permissions: [
                    .writeToPackageDirectory(reason: "This target defines built-time tasks"),
                ]
            ),
            dependencies: [
                .product(name: "SwiftFormat", package: "swift-format"),
            ]
        ),
    ]
)
