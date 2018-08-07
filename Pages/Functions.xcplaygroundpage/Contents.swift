/* 함수는 특정작업을 실행하는 코드 뭉치 */
func calculateArea(width: Int, height: Int) -> Int { /* 리턴 타입을( -> ) 지정해주자 마자 컴파일러가 함수의 반환값이 없다고 알려준다 버그를 사전에 예방해줄 수 있다 */
    let area = width * height
    return area
}

//Wall #1
let areaOfWall = calculateArea(width: 17, height: 10)

//Wall #2
calculateArea(width: 14, height: 3)

// 직접 문제 풀기 섭씨를 화씨로 바꿔주기
func calculateTemperture(F: Double) -> Double {
    let temperture = (F-32) * 5/9
    return temperture
}
let tempertureOfC = calculateTemperture(F: 80)

// 문제의 답
func convertToCelsius(temperatureInFahrenheit temp: Double) -> Double { /* 변수의 단위가 화씨라는 걸 알려줘서 코드 가독성이 더 좋다, 변수명이 길면 함수 내부에서 타이핑이 힘들다*/
    let temperatureInCelsius = (temp - 32) * (5/9)
    return temperatureInCelsius
}
convertToCelsius(temperatureInFahrenheit: 80)

/* 외부 파라미터 이름은 함수를 호출할 때 넣어야 하는 파라미터 값이 어떤건지 설명해주기 위한 용도 -> temperatureInFahrenheit
내부 파라미터는 함수 내부에서 구현 부에서 사용하기 위한 짧고 간결한 이름 -> temp */

func sayHello(to person: String, and anotherPerson: String) -> String {
    return "Hello\(person) and \(anotherPerson)" /* 스트링 인터폴레이션 방법 */
}

/* 외부 파라미터 이름은 함수를 호출할 때 넣어야 하는 파라미터 값이 어떤건지 설명해주기 위한 용도 -> and, to
 내부 파라미터는 함수 내부에서 구현 부에서 사용하기 위한 짧고 간결한 이름 -> person, anotherPerson */

sayHello(to: "jack", and: "jill")

func calculateWallPaperPrice(width: Int, height: Int, color: String = "beige") -> (price: Int, color: String) { /* 컬러의 기본값이 beige로 설정되었다, 튜플 타입은 -> (,) 표시 */
    var price: Int
    
    let area = calculateArea(width: width, height: height) /* 가격을 구하는 함수 안에 벽지 면적을 구하는 함수를 추가 */
    switch color {
    case "beige": price = area * 10000
    case "gray": price = area * 15000
    case "pink": price = area * 20000
    default: price = 0
    }
    return (price, color) /* 리턴값이 튜플 값을 바뀌었으니 리턴도 맞춰서 수정해주어야 한다.*/
}

let result = calculateWallPaperPrice(width: 10, height: 17)
result.price
result.color

func increamentAndDecrement(a: Int) { /* 함수에서 만들어준 파라미터들은 자동으로 컨스턴트로 취급 = 값을 변경할 수 없다. */
    var a = a /* 값을 변경해주고 싶으면 이렇게 해줘야 한다. */
    var b = a
    
    a += 1
    b -= 1
}

let a = 20 /* 이름이 같은 값이나 컨스던트가 있으면 함수 안에 있는 값이 우선적으로 적용된다.*/
increamentAndDecrement(a: 20)
a
/* 함수 안에서 생성된 변수나 컨스턴트의 값들은 함수 안에서 존재하게 된다 -> scope */

/* 로컬 베리에이블, 지역변수 : 함수 안에 있는 베리에이블과 컨스턴트들
 글로벌 베리에이블, 전역변수 : 함수 바깥에 있는 베리에이블과 컨스턴트들 -> 코드 전역에 존재하기 때문*/

/* 함수 안에서 생성해준 것들은 함수 안에서만 사용할 수 있다 */

