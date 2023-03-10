import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
103
""", """
3
"""),
(#filePath, #line,
"""
1000000000000000000
""", """
3760
"""),
(#filePath, #line,
"""
1333333333
""", """
1706
"""),
]

final class BTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}