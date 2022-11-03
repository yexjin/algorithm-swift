// 2583 - 영역 구하기

let inputs = readLine()!.split(separator: " ").map(){Int(String($0))!}

let M = inputs[0]   // 행
let N = inputs[1]   // 열
let K = inputs[2]   // 그려지는 직사각형

var base = Array(repeating: Array(repeating: false, count: N), count: M)

for _ in 0..<K {
    let xys = readLine()!.split(separator: " ").map(){Int(String($0))!}
    // y = 행, x = 열
    let x1 = xys[0] //0
    let y1 = xys[1] //2
    let x2 = xys[2] - 1 // 3
    let y2 = xys[3] - 1 // 3

    for i in y1...y2 {
        for j in x1...x2 {
            base[i][j] = true
        }
    }
}

let dx: [Int] = [0,0,1,-1]
let dy: [Int] = [-1,1,0,0]

var count = 0

func dfs(x: Int, y: Int) {
    for i in 0..<dx.count {
        let nx = x+dx[i]
        let ny = y+dy[i]
        
        if nx < 0 || ny < 0 || nx > N-1 || ny > M-1 {
            continue
        } else {
            if base[ny][nx] == false {
                base[ny][nx] = true
                count += 1
                dfs(x: nx, y: ny)
            }
        }
    }
}

var result: Array<Int> = []
for i in 0..<M {
    for j in 0..<N {
        if base[i][j] == false {
            base[i][j] = true
            count += 1
            dfs(x: j, y: i)
            result.append(count)
            count = 0
        }
    }
}
result = result.sorted(by: <)
print(result.count)
for i in result {
    print(i, terminator: " ")
}
