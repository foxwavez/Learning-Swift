class Exercise {
    func ageCategory(for age: Int) {
        //이 줄 밑으로만 코드를 쓰세요. 아래 if문을 고쳐주세요
        let age = 20
        switch age {
        case 0..<14: print ("Children")
        case 15..<24: print ("Adults")
        case 25..<64: print ("Youth")
        case 65...: print ("Seniors")
        default: print ("Unknown")
        }
        //이 줄 위로만 코드를 쓰세요.
    }
}
