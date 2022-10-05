// 10816 - 숫자카드 2

import Foundation

let n = Int(readLine()!)!
let cards = readLine()!.split(separator: " ").map(){Int(String($0))!}
let m = Int(readLine()!)!
let searchs = readLine()!.split(separator: " ").map(){Int(String($0))!}

var dic = [Int: Int]()
var result: Array<Int> = []

for i in cards {
    if dic.keys.contains(i) {
        dic[i]! += 1
    } else {
        dic[i] = 1
    }
}

for j in searchs {
    if dic.keys.contains(j) {
        result.append(dic[j]!)
    } else {
        result.append(0)
    }
}

print(result.map{ String($0) }.joined(separator: " "))
