// 10845 - 큐

import Foundation

var tc: Int = Int(readLine()!)!

var arr: Array<Int> = []

func push(_ a: Int) -> () {
    arr.append(a)
}

func top() -> Int {
    let arr_len: Int = arr.count
    return arr[arr_len-1]
}

func size() -> Int {
    let arr_len: Int = arr.count
    return arr_len
}

func empty() -> Int {
    if arr.isEmpty {
        return 1
    } else {
        return 0
    }
}

func pop() -> Int {
    if (arr.count == 0) {
        return -1
    }
    let popNum = arr[0]
    arr.remove(at: 0)
    return popNum
}

func front() -> Int {
    if (arr.count == 0) {
        return -1
    }
    let num = arr[0]
    return num
}

func back() -> Int {
    if (arr.count == 0) {
        return -1
    }
    let num = arr[arr.count-1]
    return num
}
var inputN: Int = 0

for _ in 1...tc {
    let input = readLine()!.split(separator: " ")
    switch String(input[0]) {
    case "push":
        push(Int(input[1])!)
    case "pop":
        print(pop())
    case "size":
        print(size())
    case "empty":
        print(empty())
    case "top":
        print(top())
    case "front":
        print(front())
    case "back":
        print(back())
    default:
        print(-1)
    }
}
