let contry = "south korea"
let province = "Seongnam"
let city = "seohyeon"
let street = "seohyeon-ro"
let streetNumber = 1

let address = contry + " " + province + " " + city
print(address)

let interpolatedAdress = "\(contry), \(province), \(city), \(streetNumber)" 
print(interpolatedAdress)

let interpolatedStreetAdress = "\(streetNumber) \(street)" // 이 방법을 쓰면 다른 타입 (int)도 String으로 만들 수 있다

// Integers (Int)
let favoriteProgrammingLanguage = "Swift"
let year = 2014

// Floating Point Numbers (Double / Float) 실수, 스위프트는 특별한 경우가 아니면  Double을 쓴다
var version = 3.1 // Double


// Boolean
let isFun = true //Bool (true = 1. false =0) 둘 중 하나 값만 가지게 된다
false

// Type Safety
var someString = ""
//someString = 12.4

let bestPlayer: String = "Messi"
let averageGoalPerGame: Double = 0.81
let YearOfDebut: Int = 2004
let mvp: Bool = true











