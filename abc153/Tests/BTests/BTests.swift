import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
10 3
4 5 6
""", """
Yes
"""),
(#filePath, #line,
"""
20 3
4 5 6
""", """
No
"""),
(#filePath, #line,
"""
210 5
31 41 59 26 53
""", """
Yes
"""),
(#filePath, #line,
"""
211 5
31 41 59 26 53
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