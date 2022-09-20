import Foundation

var n = Int(readLine()!)!

for _ in 1...n {
    var input = readLine()!

    var score: Int = 0
    var pre = 0
    
    for i in input {
        if i == "X"{
            pre = 0
        }
        else {
            if pre == 0 {
                score += 1
                pre += 1
            } else {
                score += pre + 1
                pre += 1
            }
        }
    }
    
    print(score)
}


