// 가장 빠르게 시작 + 가장 적은 시간을 차지하는 회의 (x)
// 일찍 끝나는 회의 + 끝나는 회의 시간이 같으면 시작시간이 빠른 순

import Foundation

var input = Int(readLine()!)!

var meetings: [[Int]] = []

for _ in 1...input {
    var meet = readLine()!.split(separator: " ")
    var dur: Int = Int(meet[1])! - Int(meet[0])!
    meetings.append([Int(meet[0])!, Int(meet[1])!, dur])
}

var sortedfArray = meetings.sorted(by: { $0[1]<$1[1] })

var sortedArray = sortedfArray.sorted(by: {
    if $0[1] == $1[1] {
        return $0[0]<$1[0]
    } else {
        return $0[1]<$1[1]
    }
})

var result: Int = 0
var ing: Int = 0

//print(sortedArray)

for i in 0...input-1 {
    if ing <= sortedArray[i][0] {
        result += 1
        ing = sortedArray[i][1]
    }
}

print(result)
