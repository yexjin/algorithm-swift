import Foundation

func solution(_ n:Int) -> Int
{
    var ans:Int = 0
    var num = n
    
    while (num != 1) {
        num /= 2
        if num % 2 == 1 {
            ans += 1
        }
    }
    
    if n%2 == 1 {
        ans+=1
    }
    
    return ans
}
