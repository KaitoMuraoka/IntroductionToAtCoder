import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2 5
""", """
10
"""),
(#filePath, #line,
"""
100 100
""", """
10000
"""),
]

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}