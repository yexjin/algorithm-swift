// 1260 - DFS와 BFS

let inputs = readLine()!.split(separator: " ").map(){Int(String($0))!}

let n = inputs[0]
let m = inputs[1]
let v = inputs[2]

var graph = [[Int]](repeating: [], count: n)

graph.append([])

for _ in 0..<m {
    let arr = readLine()!.split(separator: " ").map(){Int(String($0))!}
    graph[arr[0]].append(arr[1])
    graph[arr[0]] = graph[arr[0]].sorted(by: <)
    graph[arr[1]].append(arr[0])
    graph[arr[1]] = graph[arr[1]].sorted(by: <)
    
}

var visited = [Bool](repeating: false, count: n+1)


func dfs(_ start: Int) {
    visited[start] = true
    print(start, terminator: " ")
    for i in graph[start] {
        if !visited[i] {
            dfs(i)
        }
    }
}



// Queue 구현
public struct Queue<T> {
    fileprivate var queue: [T] = []
    
    public var count: Int {
        return queue.count
    }
    
    public var isEmpty: Bool {
        return queue.isEmpty
    }
    
    public mutating func enqueue(_ element: T) {
        return queue.append(element)
    }
    
    public mutating func dequeue() -> T? {
        return isEmpty ? nil : queue.removeFirst()
    }
}


var queue = Queue<Int>()

func bfs(_ start: Int) {
    queue.enqueue(start)
    visited[start] = true
    while(!queue.isEmpty) {
        guard let now = queue.dequeue() else {return}
        print(now, terminator: " ")
        for i in graph[now] {
            if !visited[i] {
                queue.enqueue(i)
                visited[i] = true
            }
        }
    }
}

dfs(v)
visited = [Bool](repeating: false, count: n+1)
print()
bfs(v)
