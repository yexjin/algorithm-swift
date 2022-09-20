import Foundation

var a = Int(readLine()!)!
var b = Int(readLine()!)!
var c = Int(readLine()!)!

var mul = a*b*c

var arr: Array<Int> = []

while(mul != 0) {
    arr.append(mul % 10)
    mul = mul / 10
}

var count = [Int](repeating: 0, count:  10)

for i in arr {
    count[i] += 1
}

for i in count {
    print(i)
}

