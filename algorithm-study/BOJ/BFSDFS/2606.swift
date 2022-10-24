// 2606 - 바이러스

let n = Int(readLine()!)!   // 정점의 개수
let m = Int(readLine()!)!   // 간선의 개수

var graph = [[Int]](repeating: [], count: n)
graph.append([])

for _ in 0..<m {
    let inputs = readLine()!.split(separator: " ").map(){Int(String($0))!}
    graph[inputs[0]].append(inputs[1])
//    graph[inputs[0]] = graph[inputs[0]].sorted(by: <)
    graph[inputs[1]].append(inputs[0])
//    graph[inputs[1]] = graph[inputs[0]].sorted(by: <)
}

var visited = [Bool](repeating: false, count: n+1)

func dfs(v: Int) {
    visited[v] = true
    for i in graph[v] {
        if !visited[i] {
            dfs(v: i)
        }
    }
}

dfs(v: 1)

var result = 0

for i in 0..<visited.count {
    if i == 1 {
        continue
    }
    if visited[i] {
        result += 1
    }
}

print(result)
