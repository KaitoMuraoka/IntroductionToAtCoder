import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 3 2
1 2
5 4
9 2
""", """
2
"""),
(#filePath, #line,
"""
9 4 1
1 5
2 4
3 3
4 2
5 1
6 2
7 3
8 4
9 5
""", """
5
"""),
(#filePath, #line,
"""
3 0 1
300000000 1000000000
100000000 1000000000
200000000 1000000000
""", """
3000000000
"""),
]

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}