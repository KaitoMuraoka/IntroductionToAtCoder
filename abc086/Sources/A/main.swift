// A - Product
// https://atcoder.jp/contests/abc086/tasks/abc086_a
// 実行制限時間: 2.0 sec
// AtCoder入門：例題02
import Foundation

private func readInt2() -> (Int, Int) {
    let value = readLine()!.split(separator: " ").map{ Int(String($0))!}
    return (value[0], value[1])
}

let (a, b) = readInt2()

private func process() -> String {
    let product = a * b
    if product % 2 == 0 {
        return "Even"
    }
    return "Odd"
}

print(process())
