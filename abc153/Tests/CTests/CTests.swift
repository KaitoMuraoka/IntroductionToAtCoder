import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 1
4 1 5
""", """
5
"""),
(#filePath, #line,
"""
8 9
7 9 3 2 3 8 4 6
""", """
0
"""),
(#filePath, #line,
"""
3 0
1000000000 1000000000 1000000000
""", """
3000000000
"""),
]

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}