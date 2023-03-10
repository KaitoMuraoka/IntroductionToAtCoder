import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
010
""", """
2
"""),
(#filePath, #line,
"""
100000000
""", """
8
"""),
(#filePath, #line,
"""
00001111
""", """
4
"""),
]

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}