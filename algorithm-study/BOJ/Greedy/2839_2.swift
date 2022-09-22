import Foundation

var input = Int(readLine()!)!

var result: Int = 0

func Solved() -> Int {
    while(input>0) {
        if input % 5 == 0 {
            result += input / 5
            input = input % 5
        } else {
            if input - 3 >= 0 {
                input -= 3
                result += 1
            }
            else {
                return -1
            }
        }
    }
    return result
}

print(Solved())
