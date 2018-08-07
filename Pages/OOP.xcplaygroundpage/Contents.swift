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

//Value Tpe vs Referwnce Type
let hd = Resolutuon(width: 1920, height: 1080)
