import UIKit

/*==========================================================
 [문제 1번]
 위치의 정보를 담은 열거체 Position을 구현하시오. Position은 up, down,
 left, right 항목이 존재하며 각각의 원시값은 존재하지 않으나, 각 케이스는
 (Int,Int) 튜플 형태의 rawValue를 가지려고 한다.
 이를 위하여 rawValue라는 변수를 생성하였고 getter를 통해 각 케이스는
 (0,1), (0,-1), (-1,0), (1,0)의 값을 리턴한다.
 
 임의의 변수 pos에 up 케이스의 rawValue를 출력하시오.
============================================================*/
enum Position {
    case up
    case down
    case left
    case right
    
    // 변수 rawValue를 만드세요.
    var rawValue: (Int, Int) {
        switch self {
        case .up: return (0,1)
        case .down: return (0,-1)
        case .left: return (-1,0)
        case .right: return (1,0)
        }
    }
}

var pos = Position.up.rawValue
print(pos)

/*==========================================================
 [문제 2번]
 클래스 Character는 좌표 (x,y)를 표현하기 위하여 (Int, Int) 튜플 타입의
 변수 position을 가지고 있다.
 initialize를 통해 position에 값을 할당하고, position 값이 1,1인
 Character 타입의 변수 warrior를 생성하시오.
============================================================*/
class Character {
    
    // 정답을 입력하시오.

    var position: (Int, Int)
    
    init(_ x: Int, _ y: Int) {
        self.position = (x, y)
    }
    
}

let warrior: Character = Character(1, 1)



/*==========================================================
 [문제 3번]
 클래스 Character에 함수 move를 만드려고 한다. 확장을 통해 Character에
 함수 move를 만드시오.
 move함수는 (Int,Int) 타입의 튜플을 매개변수로 받아서 첫번째 Int는 position의
 x좌표, 두번째 Int는 y좌표에 각각 더하시오.
 warrior를 통해 move함수를 실제로 동작시키고 warrior의 position을 출력하시오.
 ❗️단, move의 실인자(argument)는 위에서 생성한 pos를 사용한다.
============================================================*/

//정답을 입력하시오.

//extension Character {
//    func move(_ a: Int, _ b: Int) -> (Int, Int) {
//
//    }
//}
//
//warrior.move(pos: pos)
//print(warrior.position)
//
//
//
//

/*==========================================================
 [문제 4번]
 제곱을 나타나는 사용자 정의 연산자를 생성하려고 한다. 해당 연산자는 전위 연산자로
 **기호를 사용한다. ** 전위 연산자를 정의하여 sqrtNum이 100이 출력되록 하시오.
============================================================*/

//전위 연산자를 구현하시오.
prefix operator **

prefix func ** (value: Int) -> Int {
    return value * value
}

let sqrtNum = **10
print(sqrtNum)





/*==========================================================
 [문제 5번]
 클래스를 비교하는 연산자는 따로 존재하지 않는다. 이를 해결하기 위하여 Student
 클래스에는 == 연산자를 사용자 정의로 생성하려고 한다. == 연산자는 중위 연산자로
 각 Student 인스턴스의 classNum이 동일한지 판단하여 일치하면 true를 다르면
 false를 리턴한다.
 
 중위 연산자를 정의하고 print( Lee == Kim )가 true가 나오도록 하시오.
============================================================*/
class Student {
    let classNum: Int
    let name: String
    
    init (classNum: Int, name: String) {
        self.classNum = classNum
        self.name = name
    }
}

let Lee: Student = Student(classNum: 1, name: "Lee")
let Kim: Student = Student(classNum: 1, name: "Kim")

//중위 연산자를 구현하시오.
infix operator ==

func == (value1: Student, value2: Student) -> Bool {
    if value1.classNum == value2.classNum {
        return true
    }
    else
    {
        return false
    }
}




/*==========================================================
 [문제 6번]
 정수형 타입 Int는 구조체로 구현되어있다. 이미 구현된 Int 내부에 추가적인 구현이
 불가능하므로 extension을 이용하려고 한다. extension을 통해 타입 Int에
 함수 square를 생성하시오. square은 자기 자신을 제곱한다.
============================================================*/
extension Int {
    //함수 square를 구현하시오.
    func 
}

//구현 확인
var a = 10
//a.square()
//print(a)





/*==========================================================
 [문제 7번]
 SubClass는 SuperClass를 상속받아 만들어졌다. 변수 item은 SuperClass이지만
 생성은 SubClass로 하였다. 이를 다시 SuperClass으로 타입 변환을 하여 market이
 SuperClass 타입이 되도록 하시오.
============================================================*/
class SuperClass {
    var x: Int
    
    init(_ x: Int) {
        self.x = x
    }
}

class SubClass: SuperClass {
    var y: Int
    
    override init(_ y: Int) {
        self.y = y
        super.init(0)
    }
}

let item: SuperClass = SubClass(10)
//market의 타입이 SuperClass가 되도록 캐스팅하시오.
//let market



/*==========================================================
 [문제 8번]
 함수 plusClosure는 매개변수가 없지만, 리턴 타입이 (Int) -> Int 형태인
 클로저를 반환한다. plusClosure 내부에서 함수 plus와 변수 sum가 존재하고,
 함수 plus는 매개변수 num을 더하는 함수로 plus 함수를 구현하고 해당 함수를 리턴하여
 plusClosure 함수를 완성시키시오.
============================================================*/
//함수 plusClousure를 구현하시오.

//var plusFunc = plusClosure()




/*==========================================================
 [문제 9번]
 문제 8번에 plusFunc는 plus함수를 담고 있다. 따라서 plusFunc 변수는 함수처럼
 사용할 수 있을 것이다. 여기서 plusFunc를 연속적으로 사용했을 때, plus 함수 내부의
 sum의 값은 계속 누적된다. 그 이유는 sum은 plus 함수 외부에서 선언된 변수이기 때문으로
 sum은 캡처현상이 일어났기 때문이다. 그렇다면 그 캡처현상이 무엇인지 그 개념을 찾아서 메모리
 구조와 함께 sum에 값이 누적되는 이유를 설명하시오.
============================================================*/
//plusFunc(10) // 실행 결과 값 : 10
//plusFunc(10) // 실행 결과 값 : 20
//plusFunc(10) // 실행 결과 값 : 30

/*
 이유를 작성하시오.
 
 */





/*==========================================================
 [문제 10번]
 Information 프로토콜을 생성하여 다음과 같은 규칙을 가지는 프로토콜을 구현하시오.
 - String? 타입의 변수 name은 읽기 전용
 - Int 타입의 변수 age는 읽고 쓰기 모두 허용
 ❗️프로토콜은 stored property가 허용되지 않는다.
============================================================*/
//프로토콜 Information을 만드시오.



/*==========================================================
 [문제 11번]
 프로토콜 Information을 만들고 봤더니, 클래스, 구조체, 열거체 등 매번 Information
 프로토콜을 채택하면 새롭게 정의를 해주어야 한다. 그러나 이러한 반복적이고 비생산적인 행위를
 그만두고자 extension을 활용하여 기본적인 구조를 정해두려고 한다.
 name과 age를 자유롭게 기본값을 정의하시오.
 
 이 후 Information 프로토콜을 채택한 Human타입 man 변수에서 extension에서 설정한 기본값이
 나오는 것을 확인하시오.
============================================================*/
//익스텐션 Information을 통해 프로토콜의 기본값을 세팅하시오.



// 아래 주석을 지우고 테스트하시면 됩니다😊
//class Human: Information {
//
//}
//
//var man: Human = Human()
//man.name
//man.age
