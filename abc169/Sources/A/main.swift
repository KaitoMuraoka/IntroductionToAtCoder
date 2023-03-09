// A - Multiplication 1
// https://atcoder.jp/contests/abc169/tasks/abc169_a
// 実行制限時間: 2.0 sec
// AtCoder入門：例題01
import Foundation

private func readInt2() -> (Int, Int) {
    let value = readLine()!.split(separator: " ").map{ Int(String($0))!}
    return (value[0], value[1])
}

let (A, B) = readInt2()

private func process() -> Int {
    return A * B
}

print(process())
