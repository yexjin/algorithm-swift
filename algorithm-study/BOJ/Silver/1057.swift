let inputs = readLine()!.split(separator: " ").map(){Int(String($0))!}

let n = inputs[0]
var a = inputs[1]
var b = inputs[2]

var count = 0

while(a != b){
    a = a-(a/2)
    b = b-(b/2)
    count += 1
}

print(count)

