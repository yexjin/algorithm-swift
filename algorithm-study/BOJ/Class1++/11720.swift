import Foundation

var n = Int(readLine()!)!
var input = readLine()!.map { Int(String($0))! }

var result = 0
for i in input {
    result += i
}
print(result)
