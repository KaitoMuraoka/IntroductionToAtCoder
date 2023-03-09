// A - Serval vs Monster
// https://atcoder.jp/contests/abc153/tasks/abc153_a
// 実行制限時間: 2.0 sec
// AtCoder：例題03
import Foundation

private func readInt2() -> (Int, Int) {
    let value = readLine()!.split(separator: " ").map{ Int(String($0))!}
    return (value[0], value[1])
}

let (H, A) = readInt2()

private func process() -> Int {
    // HがAで割り切れる場合
    if H % A == 0 {
        return H / A
    }
    // HがAで割り切れない場合
    let times = H / A
    return times + 1
}

print(process())
