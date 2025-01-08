// Imports from standard library
import Foundation
// Imports from internal dependencies
import DependencyInjectionPattern
// Imports from third party dependencies
import Dependencies

@main
struct Program {
    static func main() async throws {

        @Dependency(\.api) var api
        let sample: API  = api
        print("Hello, Async Swift, \(sample.apply(1))")
    }
}
