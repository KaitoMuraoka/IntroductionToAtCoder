import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 4
2 2 4
""", """
6
"""),
(#filePath, #line,
"""
5 8
9 9 9 9 9
""", """
0
"""),
(#filePath, #line,
"""
10 10
3 1 4 1 5 9 2 6 5 3
""", """
3296
"""),
]

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}