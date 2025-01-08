import Foundation
import Testing

@testable import Core

// Write your test here and use APIs like `#expect(...)` to check expected conditions.
@Test func example() async throws {
    let url = URL(string: "sample")
    print((url, url?.scheme, url?.user(), url?.password(), url?.host(), url?.path(), url?.port))
}
