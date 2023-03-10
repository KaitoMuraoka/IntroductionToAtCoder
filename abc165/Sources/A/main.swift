// A - We Love Golf
// https://atcoder.jp/contests/abc165/tasks/abc165_a
// 実行制限時間: 2.0 sec
// AtCoder入門：例題04
import Foundation

private func readInt() -> Int {
    Int(readLine()!)!
}

private func readInt2() -> (Int, Int) {
    let value = readLine()!.split(separator: " ").map{ Int(String($0))!}
    return (value[0], value[1])
}

let K = readInt()
let (A, B) = readInt2()


private func process() -> Bool {
    var flag = false
    
    let a = B / K // 1以上、B以下のKの倍数の個数
    let l = (A - 1) / K // 1以上、A-1以下のKの倍数の個数
    
    // A以上B以下のKの倍数の個数から判定
    if a - l >= 1 {
        flag = true
    }
    return flag
}

print(process() ? "OK":"NG")
