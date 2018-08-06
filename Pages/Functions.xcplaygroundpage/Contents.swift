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
func calculateTemperture(F: Int) -> Int {
    let temperture = (F-32) * 5/9
    return temperture
}
let tempertureOfC = calculateTemperture(F: 90)

// 문제의 답
func covertToCelsius(temperature: Double) -> Double {
    let temperatureInCelsius = (temperature - 32) * (5/9)
    return temperatureInCelsius
}
covertToCelsius(temperature: 80)
