// 2740

var arra = [[Int]]()
var arrb = [[Int]]()

var inputs = readLine()!.split(separator: " ").map(){Int(String($0))!}
let n = inputs[0]
let m = inputs[1]

for _ in 1...n {
    let input = readLine()!.split(separator: " ").map(){Int(String($0))!}
    arra.append(input)
}

inputs = readLine()!.split(separator: " ").map(){Int(String($0))!}
let j = inputs[0]
let k = inputs[1]

for _ in 1...j {
    let input = readLine()!.split(separator: " ").map(){Int(String($0))!}
    arrb.append(input)
}

var temp = 0
var subresult: Array<Int> = []
var result = [[Int]]()
for x in 0...n-1 {
    for y in 0...k-1 {
        for z in 0...m-1 {
            temp += arra[x][z] * arrb[z][y]
        }
        subresult.append(temp)
        temp = 0
    }
    result.append(subresult)
    subresult = []
}

for i in 0..<n {
    for j in 0..<k {
        print(result[i][j], terminator: " ")
    }
    print()
}
