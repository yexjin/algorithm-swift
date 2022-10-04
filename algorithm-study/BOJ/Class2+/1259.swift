import Foundation

while(true) {
    var input = Int(readLine()!)!
    var temp = input
    if(input == 0) {
        break
    }
    
    var arr: Array<Int> = []
    
    var output = 0
    while(input > 0) {
        var rem = input % 10
        arr.append(rem)
        input = input / 10
    }
    
    var count = arr.count-1
    for i in arr {
        var po = pow(10.0, Double(count))
        output += i*Int(po)
        count -= 1
    }
    
    if(output == temp){
        print("yes")
    } else {
        print("no")
    }
    
}
