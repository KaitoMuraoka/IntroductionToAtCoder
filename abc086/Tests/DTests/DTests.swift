import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4 3
0 1 W
1 2 W
5 3 B
5 4 B
""", """
4
"""),
(#filePath, #line,
"""
2 1000
0 0 B
0 1 W
""", """
2
"""),
(#filePath, #line,
"""
6 2
1 2 B
2 1 W
2 2 B
1 0 B
0 6 W
4 5 W
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