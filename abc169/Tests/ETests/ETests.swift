import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
2
1 2
2 3
""", """
3
"""),
(#filePath, #line,
"""
3
100 100
10 10000
1 1000000000
""", """
9991
"""),
]

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}