import Foundation

var input = readLine()!.split(separator: " ")


var a: Int = Int(input[0])!
var b: Int = Int(input[1])!
if a > b {
    print(">")
} else if a < b{
    print("<")
} else {
    print("==")
}
