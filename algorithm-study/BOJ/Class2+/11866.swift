//11866 - 요세푸스 문제 0

import Foundation

let inputs = readLine()!.split(separator: " ")
let n = Int(inputs[0])!
let k = Int(inputs[1])!

var arr: Array<Int> = []
for i in 1...n {
    arr.append(i)
}

var result: Array<Int> = []
var removeIdx: Int = k-1

while(true) {
    result.append(arr.remove(at: removeIdx))
    if arr.isEmpty { break }
    removeIdx = (removeIdx + (k-1)) % arr.count
}

print("<" + result.map { String($0) }.joined(separator: ", ") + ">")
