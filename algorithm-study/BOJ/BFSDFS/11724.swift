// 11724 - 연결요소의 개수
let inputs = readLine()!.split(separator: " ").map(){Int(String($0))!}
let n = inputs[0]
let m = inputs[1]

var graph = [[Int]](repeating: [], count: n+1)
var visited = [Bool](repeating: false, count: n+1)

for _ in 0..<m {
    let arr = readLine()!.split(separator: " ").map(){Int(String($0))!}
    graph[arr[0]].append(arr[1])
    graph[arr[1]].append(arr[0])
}

// graph = [[], [2, 5], [1, 5, 4, 3], [4, 2], [3, 6, 5, 2], [2, 1, 4], [4]]

var connect = [[Int]]()
var result = 0

visited[0] = true

func dfs(v: Int) {
    visited[v] = true
    for i in graph[v] {
        if !visited[i] {
            dfs(v: i)
        } else {
            check = i
        }
    }
}

var check = 1
var count = 0

while(true) {
    if visited.contains(false) {
        let i = visited.firstIndex(of: false)!
        dfs(v: i)
    } else {
        break
    }
    count += 1
}

print(count)
