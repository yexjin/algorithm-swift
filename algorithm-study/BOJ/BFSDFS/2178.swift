// 2178 - 미로 탐색
let inputs = readLine()!.split(separator: " ").map(){Int(String($0))!}

let n = inputs[0]
let m = inputs[1]

// 상하좌우
let dx = [0, 0, -1, 1]
let dy = [-1, 1, 0, 0]

// 입력받을 miro
var miro = [[Int]](repeating: [], count: n)
for i in 0..<n {
    let arr = readLine()!.map(){Int(String($0))!}
    for j in 0..<m {
        miro[i].append(arr[j])
    }
}

var visited = Array(repeating: Array(repeating: false, count: m), count: n)  // 방문했는지 확인
var distance = Array(repeating: Array(repeating: 0, count: m), count: n) // 최단거리를 구할때 하나씩 +1 해서 마지막에

func bfs() {
    visited[0][0] = true
    distance[0][0] = 1
    
    var queue: [[Int]] = [[0,0]]
    
    while !queue.isEmpty {
        let pop = queue.removeFirst()
        
        let x = pop[0]
        let y = pop[1]
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0 && nx < n && ny >= 0 && ny < m {
                if !visited[nx][ny] && miro[nx][ny] == 1 {
                    distance[nx][ny] = 1 + distance[x][y]
                    
                    visited[nx][ny] = true
                    queue.append([nx, ny])
                }
                    
            }
        }
    }
}

bfs()

print(distance[n-1][m-1])
