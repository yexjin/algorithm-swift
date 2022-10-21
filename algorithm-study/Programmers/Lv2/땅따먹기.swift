import Foundation

func solution(_ land:[[Int]]) -> Int{
    var arr = land
    var answer = 0
    var firstMax = 0
    var secondMax = 0
    
    for i in 0..<arr.count-1 {
        var temp = arr[i]
        firstMax = temp.max()!
        var index = temp.firstIndex(of: firstMax)!
        temp.remove(at: index)
        secondMax = temp.max()!
        
        for j in 0..<4 {
            if j != index {
                arr[i+1][j] += firstMax
            } else {
                arr[i+1][j] += secondMax
            }
        }
        
    }
    answer = arr.last!.max()!
    return answer
}
