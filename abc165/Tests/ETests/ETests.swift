import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
4 1
""", """
2 3
"""),
(#filePath, #line,
"""
7 3
""", """
1 6
2 5
3 4
"""),
]

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}