import Foundation

let n = Int(readLine()!)!

var arr = readLine()!.split(separator: " ")

var arrInt:Array<Int> = arr.map({ Int($0)! })

var maxSc = Int(arrInt.max()!)

var s: Double = 0

for i in arrInt {
    s += Double(i)/Double(maxSc)*100
}

print(Double(s) / Double(n))



