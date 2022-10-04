import Foundation

let input = readLine()!.split(separator: " ")
let n = Int(input[0])!
let m = Int(input[1])!
let cards = readLine()!.split(separator: " ").map(){Int(String($0))!}

func BlackJack() -> Int {
    var max: Int = 0
    for firstIdx in 0..<n {
        for secondIdx in firstIdx+1..<n {
            for thirdIdx in secondIdx+1..<n {
                let sum = cards[firstIdx] + cards[secondIdx] + cards[thirdIdx]
                if (m - sum == 0) {
                    max = sum
                    return max
                } else if (m - sum < 0) {
                    continue
                } else {
                    if max < sum {
                        max = sum
                    }
                }
            }
        }
    }
    return max
}

print(BlackJack())
