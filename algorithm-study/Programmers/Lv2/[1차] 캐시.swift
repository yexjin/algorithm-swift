// LRU 라는 점 잘 확인하기!
func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    
    var arr = [String](repeating: "", count: cacheSize)
    
    var exe = 0
    
    for i in cities {
        if arr.contains(i.uppercased()) {
            exe += 1
            arr = arr.filter(){$0 != i.uppercased()}
            arr.append(i.uppercased())
        } else {
            arr.append(i.uppercased())
            if arr.count > cacheSize {
                arr.remove(at: 0)
            }
            exe += 5
        }
    }
    
    return exe
}
