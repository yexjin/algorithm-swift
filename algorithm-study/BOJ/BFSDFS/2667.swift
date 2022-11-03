// 2667 - 단지 번호 붙이기
let N = Int(readLine()!)!

var houses = [[Int]]()

for _ in 0..<N {
    let inputs = readLine()!
    var arr = [Int]()
    for i in inputs {
        arr.append(Int(String(i))!)
    }
    houses.append(arr)
}

let dx = [0,0,1,-1]
let dy = [-1,1,0,0]

var count = 0

func dfs(x: Int, y: Int) {
    for i in 0..<dx.count {
        let nx = x+dx[i]
        let ny = y+dy[i]
        
        if nx < 0 || ny < 0 || nx > N-1 || ny > N-1 {
            continue
        } else {
            if houses[nx][ny] == 1 {
                houses[nx][ny] = 0
                count += 1
                dfs(x: nx, y: ny)
            }
        }
    }
}

var result = [Int]()
for i in 0..<N {
    for j in 0..<N {
        if houses[i][j] == 1 {
            houses[i][j] = 0
            count+=1
            dfs(x: i, y: j)
            result.append(count)
            count = 0
        }
    }
}

result = result.sorted(by: <)
print(result.count)
for i in result {
    print(i)
}

