import Foundation

let n = Int(readLine()!)!

var stack = [(Int,Int)]()

var now: Int = 0
var score: Int = 0

for _ in 0..<n {
    let inputs = readLine()!.split(separator: " ").map(){Int(String($0))!}

    if inputs[0] == 1 { // 과제가 있는 경우
        stack.append((inputs[1], inputs[2]))
    }
    
    if !stack.isEmpty {
        let endIdx = stack.endIndex-1
        stack[endIdx].1 -= 1
        
        if stack[endIdx].1 == 0 {
            score += stack.popLast()!.0
        }
    }
    
}

print(score)
