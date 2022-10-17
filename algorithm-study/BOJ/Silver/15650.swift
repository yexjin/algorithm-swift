let inputs = readLine()!.split(separator: " ").map(){Int(String($0))!}

let n = inputs[0]
let m = inputs[1]

//var arr: Array<Int> = []
//
//for i in 0..<n {
//    arr.append(i+1)
//}

var result: Array<Int> = []

var final = [[Int]]()

func solve(_ a: Int) {
    
    if result.count == m {
        final.append(result)
    }
    
    for i in a..<n+1 {
        result.append(i)
        solve(i+1)
        result.popLast()
    }
}

solve(1)


for i in 0..<final.count {
    for j in 0..<final[i].count {
        print(final[i][j], terminator: " ")
    }
    print()
}
