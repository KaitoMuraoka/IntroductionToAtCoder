// B - Some Sums
// https://atcoder.jp/contests/abc083/tasks/abc083_b
// 実行制限時間: 2.0 sec
// AtCoder入門：例題05
import Foundation

private func readInt3() -> (Int, Int, Int) {
    let value = readLine()!.split(separator: " ").map{ Int(String($0))! }
    return (value[0], value[1], value[2])
}

let (N, A, B) = readInt3()

private func process() -> Int {
    var result = 0
    
    for i in 0...N {
        let x = calcSumDigits(i)
        
        if A <= x && x <= B {
            result += i
        }
    }
    
    return result
}

private func calcSumDigits(_ N: Int) -> Int {
    var n = N // Swiftの引数は定数になるので、再代入
    var sum_digit = 0 // 各桁の和
    while (n > 0) {
        sum_digit += n % 10
        n /= 10
    }
    
    return sum_digit
}

print(process())
