import Foundation

var input = Int(readLine()!)!

var result: Int = 0

func Delivery() -> Int {
    while(input >= 0) {
        if input == 0 {
            return result
        }
        // 5로 다 될 경우
        if input % 5 == 0 {
            result += input / 5
            return result
        }
        else {
            input -= 3
            result += 1
        }
    }
    return -1
}


print(Delivery())
