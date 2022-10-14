// 2161

let n = Int(readLine()!)!

var arr: Array<Int> = []
var result: Array<Int> = []

for i in 1...n {
    arr.append(i)
}

var now = 0

while(true) {
    result.append(arr[now])
    arr[now] = 0
    now += 1
    if(result.count == n){
        break
    } else {
        arr.append(arr[now])
        arr[now] = 0
        now += 1
    }
}

for i in result {
    print(i, terminator: " ")
}

//1234567
//0234567 1
//00345672
//00045672 3
//000056724
//000006724 5
//0000007246
//0000000246 7
//00000000462
//00000000062 4
//000000000026
//000000000006 2
//000000000000 6
