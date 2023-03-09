import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
198 1.10
""", """
217
"""),
(#filePath, #line,
"""
1 0.01
""", """
0
"""),
(#filePath, #line,
"""
1000000000000000 9.99
""", """
9990000000000000
"""),
]

final class CTests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}