// 1789

var s = Int(readLine()!)!

var d = 0

var result = 0


while(true) {
    d += 1
    result += d
    if (result == s) {
        break
    } else if (result > s){
        d -= 1
        break
    }
}

print(d)
