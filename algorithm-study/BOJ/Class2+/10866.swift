// 10866 - 덱

import Foundation

var tc: Int = Int(readLine()!)!

var arr: Array<Int> = []

func push_front(_ a: Int) -> () {
    arr.insert(a, at: 0)
}

func push_back(_ a: Int) -> () {
    arr.append(a)
}

func front() -> Int {
    let arr_len: Int = arr.count
    if arr_len == 0 {
        return -1
    }
    return arr[0]
}

func back() -> Int {
    if arr.count == 0{
        return -1
    }
    return arr[arr.count-1]
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

func pop_front() -> Int {
    if arr.count == 0 {
        return -1
    }
    return arr.remove(at: 0)
}

func pop_back() -> Int {
    if arr.count == 0 {
        return -1
    }
    let num = arr.popLast()
    return num!
}

for _ in 1...tc {
    let input = readLine()!.split(separator: " ")

    switch String(input[0]) {
    case "push_front":
        push_front(Int(input[1])!)
    case "push_back":
        push_back(Int(input[1])!)
    case "pop_front":
        print(pop_front())
    case "pop_back":
        print(pop_back())
    case "size":
        print(size())
    case "empty":
        print(empty())
    case "front":
        print(front())
    case "back":
        print(back())
    default:
        print(-1)
    }
}
