// 9012 - 괄호

import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    
    let inputs = String(readLine()!)
    
    var count: Int = 0
    
    for i in inputs {
        if i == "(" {
            count += 1
        } else {
            count -= 1
            if (count < 0){
                break
            }
        }
    }
    
    print(count == 0 ? "YES" : "NO")
    
}
