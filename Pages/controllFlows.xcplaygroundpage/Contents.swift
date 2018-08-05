var todo: [String] = ["장보기", "과제하기", "이메일 답장하기"] // 배열 안에는 같은 타입의 요소만 넣을 수 있다.
todo.append("식당 예약하기") // append로 이미 선언한 배열 안에 요소를 추가 할 수 있다 맨 뒤에 추가 된다
todo += ["도서관에서 책 빌리기", "빨래하기"]

for task in todo {
    print(task)
}

for number in 1...10 {
    print("\(number) X 5 = \(number * 5)")
}

var x = 0

while x <= 20 {
    print(x)
    x += 1
}

var index = 0

while index < todo.count {
    print(todo[index])
    index += 1
}

// Repeat-while Loop - 특정 작업(print..)을 무조건 1번을 실행시키고 싶을 때 사용
var counter = 1
repeat {
    print("Inside repeat while loop!")
} while counter < 1

// While Loop - 어떤 조건문이 false가 될 때까지 특정작업을 반복하고 싶을 때 사용
while  counter < 1 {
    print("Inside while loop!")
}

// If Statement - if 문
var temperture = 9

if temperture < 12 {
    print("날씨가 춥습니다. 자켓을 꺼내세요")
} else if temperture < 17 {
    print("날씨가 쌀쌀합니다. 가벼운 스웨터를 입으세요.")
} else {
    print("날씨가 좋네요. 티셔츠를 입으세요")
}
/* if문은 무조건 위에서 아래로 실행하기 때문에 처음 if문을 충족하는 값부터 먼저 나온다. 그래서 순서도 중요하다 */

// Logical Operator - 논리 연산자
 3 > 2 && "a" == "a"

if temperture > 7 && temperture < 12 { /* 첫번재 조건이 false이면 두번째 조건은 신경도 안쓰고 넘어가 버린다 */
    print("자켓과 함께 스카프도 메세요")
}

var isRaining : Bool = true
var isSNowing : Bool = false

if isRaining || isSNowing { /* 첫번째 조건이 true이면 두번재 조건은 확인조차 하지 않는다 */
    print("부츠를 꺼내 신으세요") /* isRaning과 isSnowing은 Bool 변수이기 때문에 직접 비교가 가능하다 */
}
if !isRaining {
    print("해가 떴습니다.")
}

if isRaining && isSNowing && temperture < 2 {
    print("손이 시려울 수 있으니 장갑을 챙기세요")
}

if (isRaining || isSNowing) && temperture < 2 { /* 괄호를 써서 다중 논리식을 만들어 줄 수도 있다. */
    print("손이 시려울 수 있으니 장갑을 챙기세요") /* 논리식을 여러개 붙일 수록 해석하기 어렵기 때문에 최대한 심플하게 작성해야 한다. */
}

let airportCodes = ["LGA", "LHR", "CDG", "HKG", "DXB", "JFK", "LGW", "ORY"]

let airport = airportCodes[0]

for airportCode in airportCodes { /* 컨맨션: 보통 array 변수명에 단수형태를 써주는게 */
    switch airportCode {
    case "LGA", "JFK": print("New York") /* 개발 컨멘션: 케이스 문에 코드가 한줄 밖에 안들어가면 한 줄로 써준다, 두 줄 이상일 땐 새 줄에서 코드 추가 */
    case "LHR", "LGW" : print("London") /* if문이었다면 esle if를 사용해주던지, or연산자를 사용해 같은 도시에 코드를 묶어준다.*/
    case "CDG", "ORY": print("Paris") /* 각각의 케이스들은 여러값에 매칭을 시킬 수 있다 ,콤마로 구분해주기만 하면 된다 */
    case "HKG": print("Hong Kong")
    default: print("알 수 없는 공항코드입니다")  /* if문의 else와 비슷하다고 이해하면 된다 */
    }
}

import Foundation /* 이 명령문을 치면 애플이 만들어 놓은 코드를 활용할 수 있다 */

var randomTemperature = Int(arc4random_uniform(UInt32(80))) - 30

switch randomTemperature {
    /* if문보다 switch문을 훨씬 더 선호하는 이유 :
     if문을 쓸 때는 논리연산자까지 써야 했지만 switch는 훨씬 해석하기 쉽고 간단하다 */
case -20..<0: print("정말 춥습니다. 두꺼운 자켓을 꼭 챙기세요.")
case 0..<10: print("손이 시려운 날씨입니다. 장갑을 껴주세요.")
case 10..<20: print("쌀쌀합니다. 가벼운 스웨터를 입으세요.")
case 20..<40: print("덥네요. 티셔츠를 입으세요.")
default: print("침대 밖은 위험해요!")
}
