import Foundation

var arr: Array<Int> = []

for i in 0...8 {
    var input = Int(readLine()!)!
    arr.append(input)
}

let maxNum: Int = arr.max()!
let maxIndex: Int = arr.index(of: maxNum)!

print(maxNum)
print(maxIndex+1)
