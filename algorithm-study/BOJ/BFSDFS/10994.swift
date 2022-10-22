//let n = Int(readLine()!)!
//
//var l = 4*n-3
//
//// 2차원 배열 세팅
//var stars: [[Character]] = [[Character]](repeating: [Character](repeating: " ", count: l), count: l)
//
//func def(_ num: Int, _ idx: Int) {
//    if num == 1 {
//        stars[idx][idx] = "*"   //
//        return
//    }
//
//    let rows = 4*n-3
//
//    for i in idx..<idx+rows {   // 0 ~ 5
//        stars[idx][i] = "*" // 0 0  // 0 1  // 0 2
//        stars[idx+rows-1][i] = "*"  // 4 0  // 4 1  // 4 2
//
//        stars[i][idx] = "*" // 0 0  // 1 0  // 2 0
//        stars[i][idx+rows-1] = "*"  // 0 4  // 1 4  2 4
//
//    }
//
//    return def(num-1, idx+2) // def(1, 2)
//}
//
//def(n, 0)
//
//for i in 0..<stars.count {
//    for j in 0..<stars.count {
//        print(stars[i][j], terminator: "")
//    }
//    print()
//}

let size: Int = Int(readLine()!)!
var stars: [String] = []
var repeatStar: String = "*"

for i in 0..<(size - 1) {
    stars.append(repeatStar + String(repeating: "*", count: 4*(size - i) - 5) + repeatStar)
    stars.append(repeatStar + String(repeating: " ", count: 4*(size - i) - 5) + repeatStar)
    repeatStar += " *"
}

for star in stars {
    print(star)
}

print(String(repeating: "* ", count: 2*(size - 1)) + "*")

for _ in 0..<stars.count {
    print(stars.removeLast())
}
