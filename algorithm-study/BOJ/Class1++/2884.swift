import Foundation

var input = readLine()!.split(separator: " ")
var h = Int(input[0])!
var m = Int(input[1])!

m = m-45

if m < 0 {
    m = m + 60
    h -= 1
    if h == -1 {
        h = 23
    }
}

print(h, m)
