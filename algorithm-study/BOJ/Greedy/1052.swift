// 1052 - 물병

import Foundation

var input = readLine()!.split(separator: " ")

var n: Int = Int(input[0])!
var k: Int = Int(input[1])!

var two: Int = 1

while(two<n){
    two = two * 2
}

var result: Int = 0

if(two - n >= k) {
    result = two - n
} else {
    result = -1
}

print(result)

