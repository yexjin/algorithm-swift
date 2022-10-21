func solution(_ arr:[Int]) -> Int {
    
    var arrv: Array<Int> = arr
    
    var n_count = 2
    var m_count = 2
    
    for i in 1..<arrv.count {
        var temp = arrv[i-1]
        var temp2 = arrv[i]
        
        while(true) {
            if arrv[i-1] == arrv[i] {
                break
            } else if arrv[i-1] > arrv[i] {
                arrv[i] = temp2*n_count
                n_count += 1
            } else {
                arrv[i-1] = temp*m_count
                m_count += 1
            }
        }
        
        n_count = 2
        m_count = 2
    }
    
    return arrv[arr.count-1]
}
