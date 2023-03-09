import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
10 4
""", """
3
"""),
(#filePath, #line,
"""
1 10000
""", """
1
"""),
(#filePath, #line,
"""
10000 1
""", """
10000
"""),
]

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}