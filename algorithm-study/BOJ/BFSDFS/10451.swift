
// 10451 - 순열 사이클

let t = Int(readLine()!)!

var answer: Array<Int> = []

for _ in 0..<t {
    
    let n = Int(readLine()!)!

    let inputs = readLine()!.split(separator: " ").map(){Int(String($0))!}
    var graph = [Int](repeating: 0, count: n+1)
    var visited = [Bool](repeating: false, count: n+1)
    
    for i in 0..<n {
        graph[i+1] = inputs[i]
    }
    
    func dfs(_ v: Int) {
        if (!visited[v]) {
            visited[v] = true
            dfs(graph[v])
        }
    }
    
    var answer = 0
    for i in 1...n {
        if !visited[i] {
            dfs(i)
            answer += 1
        }
    }
    
    print(answer)
    
    
}



