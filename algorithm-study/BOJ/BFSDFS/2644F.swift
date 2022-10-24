// 2644 - 촌수 계산
let n = Int(readLine()!)!   // 전체 사람의 수
let checks = readLine()!.split(separator: " ").map(){Int(String($0))!}
var check: Array<Int> = []  // 찾아야하는 관계
check.append(checks[0])
check.append(checks[1])
let m = Int(readLine()!)!   // 부모 자식간의 관계의 수

var graph = [[Int]](repeating: [], count: n)
graph.append([])
for _ in 0..<m {
    let inputs = readLine()!.split(separator: " ").map(){Int(String($0))!}
    graph[inputs[0]].append(inputs[1])
    graph[inputs[1]].append(inputs[0])
}


var visited = [Bool](repeating: false, count: n+1)

var count = 0
var result = 0

func dfs(v: Int) {
    count += 1
    visited[v] = true
    if v == check[1] {
        result = count-1
    }
    for i in graph[v] {
        if !visited[i] {
            dfs(v: i)
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

func bfs(v: Int) {
    queue.enqueue(v)
    visited[v] = true
    while(!queue.isEmpty) {
        guard let now = queue.dequeue() else {return}
        if now == check[1] {
            result = count-2
            break
        }
        for i in graph[now] {
            if !visited[i] {
                queue.enqueue(i)
                visited[i] = true
                count += 1
            }
        }
    }
}

bfs(v: check[0])

if result == 0 {
    print(-1)
} else {
    print(result)
}
