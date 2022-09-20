import Foundation

var input = readLine()!.split(separator: " ").map({ return Int($0)! })

var asc_input = input.sorted(by: <)
var des_input = input.sorted(by: >)

if asc_input == input {
    print("ascending")
} else if des_input == input {
    print("descending")
} else {
    print("mixed")
}
