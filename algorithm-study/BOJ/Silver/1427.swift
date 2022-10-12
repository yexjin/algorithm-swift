import Foundation

var inputs = Int(readLine()!)!

var array: Array<Int> = []

while(inputs>0) {
    array.append( inputs % 10 )
    inputs /= 10
}

array = array.sorted(by: >)

for i in array {
    print(i, terminator: "")
}
