import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
24
""", """
3
"""),
(#filePath, #line,
"""
1
""", """
0
"""),
(#filePath, #line,
"""
64
""", """
3
"""),
(#filePath, #line,
"""
1000000007
""", """
1
"""),
(#filePath, #line,
"""
997764507000
""", """
7
"""),
]

final class DTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}