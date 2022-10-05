// 1920 - 수 찾기

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
        print(1)
    } else {
        print(0)
    }
}

