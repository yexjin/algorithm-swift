import Foundation

var n = Int(readLine()!)!

var input = readLine()!.split(separator: " ").map { return Int($0)! }

var maxNum = input.max()
var minNum = input.min()

print(minNum!, maxNum!)
