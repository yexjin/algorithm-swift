// [1차] 캐시
var city = [String]()

var cities = ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "Jeju", "Pangyo", "Seoul", "NewYork", "LA"]
for _ in cities {
    cities = cities.filter(){$0 != "Jeju"}
}
print(cities)

//// 거리두기 확인하기
//var places = [["POOOP", "OXXOX", "OPXPX", "OOXOX", "POXXP"], ["POOPX", "OXPXP", "PXXXO", "OXXXO", "OOOPP"], ["PXOPX", "OXOXP", "OXPOX", "OXXOP", "PXPOX"], ["OOOXX", "XOOOX", "OOOXX", "OXOOX", "OOOOO"], ["PXPXP", "XPXPX", "PXPXP", "XPXPX", "PXPXP"]]
//
//var divplaces = Array(repeating:Array(repeating: "", count: 5), count:5)
//var temparr = [Character]()
//
//for i in 0..<5 {
//    for j in places[i] {
//        // j = "POOOP"
//        for z in j {
//            temparr.append(z)
//        }
//    }
//}

