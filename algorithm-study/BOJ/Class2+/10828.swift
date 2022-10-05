// 10828 - 스택

import Foundation

var tc: Int = Int(readLine()!)!

var arr: Array<Int> = []

func push(_ a: Int) -> () {
    arr.append(a)
}

func top() -> Int {
    let arr_len: Int = arr.count
    if arr_len == 0 {
        return -1
    }
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
    if arr.count == 0 {
        return -1
    }
    let num = arr.popLast()
    return num!
}

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
    default:
        print(-1)
    }
}
