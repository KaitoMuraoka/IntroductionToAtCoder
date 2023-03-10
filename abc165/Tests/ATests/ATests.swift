import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
7
500 600
""", """
OK
"""),
(#filePath, #line,
"""
4
5 7
""", """
NG
"""),
(#filePath, #line,
"""
1
11 11
""", """
OK
"""),
]

final class ATests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}