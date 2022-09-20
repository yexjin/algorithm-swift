
import Foundation

let t = Int(readLine()!)!

for _ in 1...t {
    let input = readLine()!.split(separator: " ")
    let n = Int(input[0])!
    let str = input[1]
    for j in str {
        for _ in 0...n-1 {
            print("\(j)", terminator: "")
        }
    }
    print("")
}


