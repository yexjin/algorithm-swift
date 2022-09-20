import Foundation

var arr:Array<Int> = []

var remain: Array<Int> = []

for _ in 0...9 {
    var val = Int(readLine()!)!
    arr.append(val)
    remain.append(val%42)
}

var count = 0
while(!remain.isEmpty) {
    var temp: Int = remain[0]
    remain = remain.filter{$0 != temp}
    count += 1
}

print(count)
