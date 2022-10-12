import Foundation

// 8370

let inputs = readLine()!.split(separator: " ").map(){Int(String($0))!}

let a = inputs[0] * inputs[1]
let b = inputs[2] * inputs[3]

print(a+b)
