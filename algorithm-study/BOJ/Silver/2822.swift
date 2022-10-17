// 2822

var arr: Array<Int> = []

for _ in 0..<8 {
    let score = Int(readLine()!)!
    arr.append(score)
}

var sorted_arr = arr.sorted(by: >)

var result = 0
for i in 0..<5 {
    result += sorted_arr[i]
}

print(result)
var result_idx: Array<Int> = []
for i in 0..<5 {
    result_idx.append(Int(arr.index(of: sorted_arr[i])!)+1)
}

result_idx = result_idx.sorted(by: <)

for i in 0..<5 {
    print(result_idx[i], terminator: " ")
}
