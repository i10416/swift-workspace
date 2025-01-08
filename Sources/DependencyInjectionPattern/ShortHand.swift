import Dependencies
import DependenciesMacros

// API
@DependencyClient
public struct ShortHandAPI: Sendable {
    public var apply: @Sendable () async ->  Void = {}
}

// Implementation
extension ShortHandAPI: DependencyKey {
    public static let liveValue = Self(apply: {
        print("B/default")
    })

    public static let testValue = Self(apply: {})
}
