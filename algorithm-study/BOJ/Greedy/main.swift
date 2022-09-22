import Foundation

var input = Int(readLine()!)!

var dur: [[Int]] = Array()

for _ in 1...input {
    var meet = readLine()!.split(separator: " ")
    dur.append(Int(meet[0])!, Int(meet[1])!)
}

print(dur)
