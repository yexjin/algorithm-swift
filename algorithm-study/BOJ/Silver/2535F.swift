// 2535

let n = Int(readLine()!)!

var arr = [[Int]]()

for _ in 0..<n {
    let temp = readLine()!.split(separator: " ").map(){Int(String($0))!}
    arr.append(temp)
}

arr = arr.sorted(by: {$0[2] > $1[2] })

var a = 0
var b = 0
var c = 0

var result = [[Int]]()

for i in 0..<n {
    if arr[i][0] == 1 {
        a += 1
        if a >= 3 {
            continue
        }
        result.append(arr[i])
    }
    if arr[i][0] == 2 {
        b += 1
        if b >= 3 {
            continue
        }
        result.append(arr[i])
    }
    if arr[i][0] == 3 {
        c += 1
        if c >= 3 {
            continue
        }
        result.append(arr[i])
    }
}
print(result)

for i in 0..<3 {
    print("\(result[i][0]) \(result[i][1])")
}
