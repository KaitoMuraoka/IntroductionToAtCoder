import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 20
""", """
3
"""),
(#filePath, #line,
"""
25 100
""", """
3
"""),
(#filePath, #line,
"""
314159265 358979323846264338
""", """
31
"""),
]

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}