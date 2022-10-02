// 11501 - 주식

import Foundation

var tc = Int(readLine()!)!


for _ in 1...tc {
    var day = Int(readLine()!)!
    var arr = readLine()!.split(separator: " ")
    var idx: Int = arr.count-1
    var maxNum: Int = Int(arr[idx])!
    var temp: Int = 0
    var result: Int = 0
    for i in stride(from: arr.count-2, to: -1, by: -1) {
        if maxNum > Int(arr[i])! {
            temp = maxNum-Int(arr[i])!
            result += temp
        } else if maxNum < Int(arr[i])! {
            maxNum = Int(arr[i])!
        } else {
            temp = maxNum-Int(arr[i])!
            result += temp
        }
    }
    
    print(result)

}

