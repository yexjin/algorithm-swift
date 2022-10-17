// 2628

let inputs = readLine()!.split(separator: " ").map(){Int(String($0))!}

let x = inputs[0]
let y = inputs[1]

let n = Int(readLine()!)!
var input_arr = [[Int]]()
for _ in 0..<n {
    let temp = readLine()!.split(separator: " ").map(){Int(String($0))!}
    input_arr.append(temp)
}

var x_arr: Array<Int> = []
var y_arr: Array<Int> = []
for i in 0..<input_arr.count {
    if input_arr[i][0] == 1 {
        x_arr.append(input_arr[i][1])
    } else {
        y_arr.append(input_arr[i][1])
    }
}

x_arr = x_arr.sorted(by: <)
y_arr = y_arr.sorted(by: <)

x_arr.append(x)
y_arr.append(y)

var r_x: Array<Int> = []
var r_y: Array<Int> = []

r_x.append(x_arr[0])
r_y.append(y_arr[0])

for i in 1..<x_arr.count {
    r_x.append(x_arr[i]-x_arr[i-1])
}
for i in 1..<y_arr.count {
    r_y.append(y_arr[i]-y_arr[i-1])
}
print(r_x.max()!*r_y.max()!)
