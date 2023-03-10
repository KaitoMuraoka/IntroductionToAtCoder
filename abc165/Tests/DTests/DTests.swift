import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
5 7 4
""", """
2
"""),
(#filePath, #line,
"""
11 10 9
""", """
9
"""),
]

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}