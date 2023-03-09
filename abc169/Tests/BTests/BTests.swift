import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2
1000000000 1000000000
""", """
1000000000000000000
"""),
(#filePath, #line,
"""
3
101 9901 999999000001
""", """
-1
"""),
(#filePath, #line,
"""
31
4 1 5 9 2 6 5 3 5 8 9 7 9 3 2 3 8 4 6 2 6 4 3 3 8 3 2 7 9 5 0
""", """
0
"""),
]

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}