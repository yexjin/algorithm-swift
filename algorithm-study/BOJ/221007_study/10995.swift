import Foundation
var n = Int(readLine()!)!
//3
//* * *
// * * *
//* * *
for i in 0..<n {
    if i % 2 == 0{
        for _ in 0..<n {
            print("* ", terminator: "")
        }
    } else {
        for _ in 0..<n {
            print(" *", terminator: "")
        }
    }
    print("")
}
print(" ", terminator: "")

