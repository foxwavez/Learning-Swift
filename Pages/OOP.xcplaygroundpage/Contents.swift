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
    var resolution = Resolutuon() /* 프로퍼티 */
    var frameRate = 0.0
    var name = ""
}

let videoMode = VideoMode()
/*  인스턴스.       컨스턴트 */
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
