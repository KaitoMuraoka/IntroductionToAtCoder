import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
3 8 7 1
""", """
Left
"""),
(#filePath, #line,
"""
3 4 5 2
""", """
Balanced
"""),
(#filePath, #line,
"""
1 7 6 4
""", """
Right
"""),
]

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}