// 2331 - 반복수열
import Foundation

let inputs = readLine()!.split(separator: " ").map(){Int(String($0))!}
let a = inputs[0]
let p = inputs[1]

var d: Array<Int> = [a]
var visited = [Int](repeating: 0, count: 10001)
visited[a] = 1
var rot = 0

func solve(now: Int) {
    
    var temp = d[now-1]
    var cal = 0
    
    while(temp > 0) {
        let rem = Double(temp % 10)
        cal += Int(pow(rem, Double(p)))
        temp /= 10
    }
    d.append(cal)
    visited[cal] += 1
    if visited[cal] >= 2 {
        rot = cal
        return
    } else {
        var next = now+1
        solve(now: next)
    }
}

solve(now: 1)
var result = 0
for i in d {
    if i == rot {
        break
    }
    result += 1
}

print(result)

