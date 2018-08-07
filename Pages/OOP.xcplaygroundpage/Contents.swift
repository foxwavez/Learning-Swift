/* OOP, 객체지향 프로그래밍 : Object Oriented programing
 Class와 Structure */

struct Resolutuon {
    var width = 5
    var height = 10
}
/* 인스턴스 : 선언한 Class나 Structure를 가지로 실제 값을 만드는 과정*/
var resolutuon1 = Resolutuon()
resolutuon1.height
resolutuon1.width

var resolutuon2 = Resolutuon()
resolutuon2.height = 30
resolutuon2.width = 15

class VideoMode {
    var resolution = Resolutuon() /* 프로퍼티: 클래스, 구조체, 열겨형에 들어있는 값.
     
 */
    var frameRate = 0.0
    var name = ""
}

let videoMode = VideoMode()
/*  let 컨스턴트=상수  인스턴스 */
videoMode.frameRate
videoMode.name
videoMode.resolution.height

//Value Type (structure) vs Reference Type (class)
let hd = Resolutuon(width: 1920, height: 1080)
var cinema = hd /* 새로운 변수나, 컨스턴트를 만들어줄 때 이 인스턴스에 값이 복사된다 */

cinema.width = 2048
hd.width
cinema.width

let tenEigty = VideoMode() /* 새로운 변수나 컨스턴스 대입시켜줄 때 인스턴스가 복사되는 게 아니라 같은 인스턴스 값을 가리키는 서로 다른 두개의 이름이 된다*/
tenEigty.resolution = hd
tenEigty.name = "1080i"
tenEigty.frameRate = 25.0

let anotherTenEighty = tenEigty /* tenEigty와 aotherTenEighty 같은 인스턴스를 가르키는 별개의 이름*/
anotherTenEighty.frameRate = 30

tenEigty.frameRate
anotherTenEighty.frameRate

/* 스트럭쳐는 보통 상대적으로 간단한 데이터 타입을 사용하고 싶을 때 사용한다.*/

// Stored Propery  - 값이 저장되어 있는 프로퍼티: 밸류어블(변수)이나, 컨스턴트(상수) 선언한 값을 가질 수 있다.
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangOfThreeItmes = FixedLengthRange(firstValue: 0, length: 3) /* 스트럭쳐는 초기화 함수를 자동으로 생성해준다. */
rangOfThreeItmes.firstValue = 6

let rangOfFourItems = FixedLengthRange(firstValue: 0, length: 4) /* rangOfFourItems가 컨스턴트(상수let) 이기 때문에 값을 바꿀 수가 없다 */
// rangOfThreeItmes.firstValue = 6

//Computed Property - 값이 저장되지 않고 매 번 새로운 값을 저장하는 프로퍼티
struct Point {
    var x = 0.0
    var y = 0.0
}
struct Size {
    var width = 0.0
    var height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get { /*get 안에 들어가는 코드는 center라는 프로퍼티를 호출할 때 실행된다 */
            let centerX = origin.x + (size.width / 2)
            let ceinerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: ceinerY)
        }
        set(newCenter) { /* 새트는 var center에 값을 할당해줄 때 */
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.x - (size.height / 2)
        }
    }
}
var square = Rect(origin:Point(x: 0.0, y: 0.0), size: Size(width: 10, height: 10))
let initialCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
square.origin

//Type Property - 인스턴스에 귀속되어 있지 않고 타입자체에 연관되어 있는 프로퍼티
