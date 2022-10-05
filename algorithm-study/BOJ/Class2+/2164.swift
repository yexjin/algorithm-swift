// 2164 - 카드2

import Foundation

let n = Int(readLine()!)!
var queue = Array(1...n)
var pointer = 0

if n == 1 {
    print(1)
} else {
    while(true) {
        queue[pointer] = 0
        queue.append(queue[pointer+1])
        queue[pointer+1] = 0
        if queue[queue.count-2] == 0 {
            print(queue.last!)
            break
        }
        pointer += 2
    }
}

