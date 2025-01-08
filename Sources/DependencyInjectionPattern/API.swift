import Dependencies
import DependenciesMacros

// Interface
public struct API: Sendable {
    public var apply: @Sendable (Int32) -> Void
}

// Implementation
extension API: DependencyKey {
    public static let liveValue = Self(apply: {value in
      print("default: \(value)")
    })
}

// Bootstrap
extension DependencyValues {
    public var api: API {
        get {
            self[API.self]
        }
        set {
            self[API.self] = newValue
        }

    }
}
