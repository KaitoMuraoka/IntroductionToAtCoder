import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
1 21
""", """
Yes
"""),
(#filePath, #line,
"""
100 100
""", """
No
"""),
(#filePath, #line,
"""
12 10
""", """
No
"""),
]

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}