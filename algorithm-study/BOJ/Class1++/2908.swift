import Foundation

var input = readLine()!.split(separator: " ")
var a = String(input[0])
var b = String(input[1])

var r_a: Array<Character> = Array(a)
var r_b: Array<Character> = Array(b)

r_a.reverse()
r_b.reverse()

var result_a: Int = 0
var result_b: Int = 0
for i in 0...r_a.count-1{
    result_a += Int(String(r_a[i]))! * Int(pow(Float(10), Float(r_a.count-i-1)))
}
for i in 0...r_b.count-1{
    result_b += Int(String(r_b[i]))! * Int(pow(Float(10), Float(r_b.count-i-1)))
}
if result_a > result_b {
    print(result_a)
} else {
    print(result_b)
}
