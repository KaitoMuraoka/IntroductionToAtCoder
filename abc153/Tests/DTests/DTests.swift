import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2
""", """
3
"""),
(#filePath, #line,
"""
4
""", """
7
"""),
(#filePath, #line,
"""
1000000000000
""", """
1099511627775
"""),
]

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}