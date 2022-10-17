// 10773

let n = Int(readLine()!)!

var arr: Array<Int> = []

for _ in 0..<n {
    let m = Int(readLine()!)!
    if m == 0 {
        if arr.count == 0 {
            continue
        } else {
            arr.popLast()
        }
    } else {
        arr.append(m)
    }
}

var result = 0

for i in arr {
 result += i
}
print(result)
