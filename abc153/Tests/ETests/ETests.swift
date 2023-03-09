import XCTest
import TestLibrary

let cases: [TestCase] = [
(#filePath, #line,
"""
9 3
8 3
4 2
2 1
""", """
4
"""),
(#filePath, #line,
"""
100 6
1 1
2 3
3 9
4 27
5 81
6 243
""", """
100
"""),
(#filePath, #line,
"""
9999 10
540 7550
691 9680
700 9790
510 7150
415 5818
551 7712
587 8227
619 8671
588 8228
176 2461
""", """
139815
"""),
]

final class ETests: XCTestCase, TimeLimit {
    let timeLimit: TimeInterval = 2.0

    func testExample() throws {
        try cases.forEach(solve)
    }
}