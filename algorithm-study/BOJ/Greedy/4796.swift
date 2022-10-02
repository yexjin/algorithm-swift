// 4796
// 캠핑

import Foundation

var l: Int = 1
var p: Int = 1
var v: Int = 1

var count: Int = 1

while(true){
    let input = readLine()!.split(separator: " ")
    l = Int(input[0])!  // 5
    p = Int(input[1])!  // 8
    v = Int(input[2])!  // 20
    if(l == 0 && p == 0 && v == 0){
        break
    }
    let result: Int
    let val: Int = v/p  // 2
    var remain: Int = v%p   // 4

    if l < remain { // (이용가능한날수 < 남은 날수)    // 5>4
        remain = l
    }
    result = val*l + remain // 2*5+4 = 14

    print("Case \(count): \(result)")
        count += 1
}
