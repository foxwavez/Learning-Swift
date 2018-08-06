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


