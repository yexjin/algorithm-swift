// 17474 - 재귀함수가 뭔가요?

let n = Int(readLine()!)!+1

let string1 = "어느 한 컴퓨터공학과 학생이 유명한 교수님을 찾아가 물었다."
let string2 = """
"재귀함수가 뭔가요?"
"""
let string3 = """
"잘 들어보게. 옛날옛날 한 산 꼭대기에 이세상 모든 지식을 통달한 선인이 있었어.
"""
let string4 = """
마을 사람들은 모두 그 선인에게 수많은 질문을 했고, 모두 지혜롭게 대답해 주었지.
"""
let string5 = """
그의 답은 대부분 옳았다고 하네. 그런데 어느 날, 그 선인에게 한 선비가 찾아와서 물었어."
"""
let string6 = """
"재귀함수는 자기 자신을 호출하는 함수라네"
"""
let string7 = "라고 답변하였지."

let addString = "____"
let count = 0

func loop(_ a: Int) {
    var count = a
    print(String(repeating: addString, count: n-count)+string2)
    if count == 1 {
        print(String(repeating: addString, count: n-count)+string6)
        return
    } else {
        print(String(repeating: addString, count: n-count)+string3)
        print(String(repeating: addString, count: n-count)+string4)
        print(String(repeating: addString, count: n-count)+string5)
    }
    count = count-1
    loop(count)
    print(String(repeating: addString, count: n-count)+string7)
}

print(string1)

loop(n)

print(string7)
