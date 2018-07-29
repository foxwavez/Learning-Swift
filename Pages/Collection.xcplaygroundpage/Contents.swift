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

todo.insert("빨래 널기", at: 2) // 추가되는 순서를 지정할 수 있다
todo.remove (at: 2) // 지울 수 있다. 지우는 순서를 지정할 수 있다.
todo.count // 배열 안에 요소가 몇개 나 있는지 확인할 수 있다




