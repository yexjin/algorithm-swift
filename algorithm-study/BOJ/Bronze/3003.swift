import Foundation

// 킹 1개, 퀸 1개, 룩 2개, 비숍 2개, 나이트 2개, 폰 8개

var input = readLine()!.split(separator: " ").map(){Int(String($0))!}

let comp = [1, 1, 2, 2, 2, 8]

var result: Array<Int> = []

for i in 0..<input.count {
    print("\(comp[i] - input[i]) ", terminator: "")
}

                
