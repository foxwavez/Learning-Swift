//Colletions = Array, Dictionary, Set

var todo: [String] = ["장보기", "과제하기", "이메일 답장하기"] // 배열 안에는 같은 타입의 요소만 넣을 수 있다.

todo.append("식당 예약하기") // append로 이미 선언한 배열 안에 요소를 추가 할 수 있다 맨 뒤에 추가 된다

todo += ["도서관에서 책 빌리기", "빨래하기"]

let tasks = ["염색하기"]
//tasks.append("핸드폰 고치기") 변하지 않는 let이기 때문에 추가 할 수 없다

// Subscript 문법
let firsrTodo = todo[0]
let thirdTodo = todo[2]

todo[4] = "화장실 청소하기"

todo.insert("빨래 널기", at: 2) // 추가되는 순서를 지정할 수 있다, at을 지우면 에러가 난다 (필수)
todo.remove (at: 2) // 지울 수 있다. 지우는 순서를 지정할 수 있다.
todo.count // 배열 안에 요소가 몇개 나 있는지 확인할 수 있다

// 값이 없늘 때 에러가 발생한다
//let lastItem = todo[6]



//Dictuonary
/*
 Air port Code          Airport Name
 INC                    Inncheon
 GMP                    Gimpo
 HKG                    Hong Kong International
 SFO                    San Fransico International
 LHR                    Heathrow
 */

var airportCodes :[String : String] = [
    "INC" : "Incheon",
    "GMP" : "Gimpo",
    "HKG": "Hong Kong International",
    "SFO" : "San Fransico International",
    "LHR" : "Heathrow"]
/*Array는 순서대로 결과값이 나오지만 Dictionary는 임의대로 나온다 -> 순서가 필요없는 경우에 딕셔너리를 쓴다
타입이 궁금할 땐 옵션 키를 누르고 마우스를 호버하면 물음표가 뜨고 클릭하면 타입을 확인 할 수 있다.*/

//Reading
var airportName = airportCodes["INC"] /* 결과에 인천이 나온다 */

//Inserting
airportCodes["SYD"] = "Sydney"
airportCodes["GMP"] = "Gimpo International"
airportCodes.updateValue("Gimpo", forKey: "GMP")
//updateValue의 메소드 좋은 점 : 존재하는 키를 입력하면 값을 변경해준다. 없는 키를 입력하면 새롭게 추가해준다

// Removing
airportCodes["SYD"] = nil /* nil이 비어있는 값, 스위프트에 null을 의미하는 것 같다 */
airportCodes.removeValue(forKey: "LHR")

let incheonAirport = airportCodes["INC"] // 딕셔너리는 값을 가져올 때 옵셔널을 가져온다
type(of: incheonAirport) // 옵셔널로 지정하면 값이 무조건 있어야 하지만 nill이 될 수 도 있다.

let abcAirport = airportCodes["ABC"] //키가 없어도 nill을 돌려받는다
