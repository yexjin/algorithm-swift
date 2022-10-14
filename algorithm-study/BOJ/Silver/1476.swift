//1476

import Foundation

var inputs = readLine()!.split(separator: " ").map() {Int(String($0))!}

var e = inputs[0]
var s = inputs[1]
var m = inputs[2]

var result = 0

var a = 0
var b = 0
var c = 0

while(true) {
    if a == e && b == s && c == m {
        break
    }
    
    a += 1
    b += 1
    c += 1
    
    if a == 16 {
        a = 1
    }
    if b == 29 {
        b = 1
    }
    if c == 20 {
        c = 1
    }
    
    result += 1
}

print(result)


import Foundation
