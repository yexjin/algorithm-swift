// 1389 - 케빈 베이컨의 6단계 법칙
// 최단 거리 = BFS문제

let inputs = readLine()!.split(separator: " ").map(){Int(String($0))!}
let n = inputs[0]   // 유저의 수
let m = inputs[1]   // 친구관계의 수

var relations = Array(repeating: Array(repeating: false, count: n+1), count: n+1)
for _ in 0..<m {
    let rel = readLine()!.split(separator: " ").map(){Int(String($0))!}
    relations[rel[0]][rel[1]] = true
    relations[rel[1]][rel[0]] = true
}

// Queue 구현
struct Queue<T> {
    var queue = [T]()
    var index = 0
    
    var isEmpty: Bool {
        return queue.count - index == 0
    }
    
    mutating func push(_ e: T) {
        queue.append(e)
    }
    
    mutating func pop() -> T {
        defer {
            index += 1
        }
        return queue[index]
    }
}

// n번 유저의 케빈 베이컨 수를 반환하는 bfs 함수
func bfs(v: Int) -> Int {
    var queue = Queue<(Int, Int)>() // 유저와 거리를 함께 저장
    var visited = Array(repeating: false, count: n+1)
    var dis = 0 // 거리를 모두 더해서 만든 케빈 베이컨 수 : 반환 값
    
    queue.push((v, 0))
    visited[v] = true
    
    while !queue.isEmpty {
        let now = queue.pop()
        dis += now.1
        for i in 1..<(n+1) {
            if !visited[i] && relations[now.0][i] {
                queue.push((i, now.1 + 1))
                visited[i] = true
            }
        }
    }
    
    return dis
}

var vacons = Array(repeating: Int.max, count: n+1)

for i in 1..<n+1 {
    vacons[i] = bfs(v: i)
}

print(vacons.firstIndex(of: vacons.min()!)!)
