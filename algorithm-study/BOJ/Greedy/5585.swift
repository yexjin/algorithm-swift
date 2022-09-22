// 5585 : 거스름돈

import Foundation

let coins: Array<Int> = [500,100,50,10,5,1]

var input = Int(readLine()!)!
input = 1000-input
var result: Int = 0

for coin in coins {
    if input > coin {
        result += input / coin
        input = input % coin
    }
    else { continue }
}

print(result)
