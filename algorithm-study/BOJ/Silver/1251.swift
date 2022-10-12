import Foundation

// 1251

let inputs = String(readLine()!)

let array = inputs.map(){$0}

var result: Array<String> = []

for i in 0..<array.count-2 {
    for j in i+1..<array.count-1 {
        for k in j+1..<array.count {
            result.append("\(String(array[0..<j].reversed()))\(String(array[j..<k].reversed()))\(String(array[k..<array.count].reversed()))")
        }
    }
}

print(result.sorted(by: <)[0])
