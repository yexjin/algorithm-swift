// 11047
import Foundation

var input = readLine()!.split(separator: " ")

var n = Int(input[0])!
var k = Int(input[1])!
var coins: Array<Int> = []

for _ in 1...n {
    coins.append(Int(readLine()!)!)
}
coins = coins.sorted(by: >)

var result: Int = 0
var idx = 0

for i in coins {
    if k > i {
        result += k / i
        k = k % i
    }
    else { continue }
}

print(result)
