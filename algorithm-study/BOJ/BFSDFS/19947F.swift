// 19947 - 투자의 귀재 배주형

let inputs = readLine()!.split(separator: " ").map(){Int(String($0))!}
var h = inputs[0]
var y = inputs[1]

let a = 1.05    // 1년마다
let b = 1.2     // 3년마다
let c = 1.35    // 5년마다

var result: Array<Int> = []

func perFive(_ money: Int, _ year: Int) {
    let remainM = Int(Double(money) * c)
    let remainY = year - 5
    if remainY >= 5 {
        perFive(remainM, remainY)
    } else {
        result.append(remainM)
    }
}

func perThree(_ money: Int, _ year: Int) {
    let remainM = Int(Double(money) * b)
    let remainY = year - 3
    if remainY >= 3 {
        perThree(remainM, remainY)
    }
    else {
        result.append(remainM)
    }
}

func perOne(_ money: Int, _ year: Int) {
    let remainM = Int(Double(money) * a)
    let remainY = year - 1
    if remainY >= 1 {
        perOne(remainM, remainY)
    } else {
        result.append(remainM)
    }
}

func solve() {
    if y >= 5 {
        perFive(h, y)
        perThree(h, y)
        perOne(h, y)
    } else if y >= 3 {
        perThree(h, y)
        perOne(h, y)
    } else if y >= 1 {
        perOne(h, y)
    } else if y == 0{
        print(h)
    } else {
        return
    }
}

solve()

let maxNum = result.max()!

print(maxNum)
