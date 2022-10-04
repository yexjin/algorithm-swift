// 1052 - 물병

import Foundation

var input = readLine()!.split(separator: " ")

var n: Int = Int(input[0])! //13
var k: Int = Int(input[1])! //2
var bottle: Int = 0
var result: Int = 0
var xDegree: Int = 0

while(n >= k){
    
    var x: Int = 1
    xDegree = 0
    
    while(x<n){
        x *= 2  //8, 4
        xDegree += 1
    }

    n -= x  // 13-8 = 5 -4 = 1
    
    bottle += 1
}

bottle += n

var temp: Int = 0

if (bottle >= k) {
    for _ in 1...xDegree {
        temp *= 2
    }
    result = temp - k
} else {
    result = -1
}

print(result)

//var result: Int = 0
//
//if(two - n >= k) {
//    result = two - n
//} else {
//    result = -1
//}
//
//print(result)



