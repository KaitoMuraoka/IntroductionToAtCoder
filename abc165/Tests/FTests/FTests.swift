import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
10
1 2 5 3 4 6 7 3 2 4
1 2
2 3
3 4
4 5
3 6
6 7
1 8
8 9
9 10
""", """
1
2
3
3
4
4
5
2
2
3
"""),
]

final class FTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}