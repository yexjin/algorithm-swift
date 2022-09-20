import Foundation

var input = Int(readLine()!)!

for i in 1...input {
    for j in 1...i {
        print("*", terminator: "")
    }
    print("")
}

