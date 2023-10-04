//
//  main.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/21.
//

import Foundation
//MARK: - 클래스 예제
//class pigStorage {
//    var totalMoney: Int
//    var maxSize: Int
//
//    init(totalMoney: Int, maxSize: Int) {
//        self.totalMoney = totalMoney
//        self.maxSize = maxSize
//    }
//    func deposit(money: Int) {
//        totalMoney = totalMoney + money
//    }
//
//    func withdraw(money: Int) {
//        if totalMoney > money {
//            totalMoney = totalMoney - money
//        } else {
//            print("잔액이 부족합니다. ")
//        }
//    }
//    func show() {
//        print("현재 잔액: \(totalMoney)")
//    }
//
//}
//
//var myStorage: pigStorage = pigStorage(totalMoney: 0, maxSize: 10000)
//myStorage.deposit(money: 1500)
//myStorage.deposit(money: 700)
//myStorage.show()
//
//myStorage.withdraw(money: 500)
//myStorage.show()

//class 예제3
//class student {
//    var name: String
//    var studentNumbr: String
//    var age: Int
//    var scoreSwift: Int
//    var scoreIos: Int
//    var scoreWeb: Int
//
//    init(name: String, studentNumbr: String, age: Int, scoreSwift: Int, scoreIos: Int, scoreWeb: Int) {
//        self.name = name
//        self.studentNumbr = studentNumbr
//        self.age = age
//        self.scoreSwift = scoreSwift
//        self.scoreIos = scoreIos
//        self.scoreWeb = scoreWeb
//    }
//
//    func show() {
//        print("\(name)님 안녕하세요.")
//        print("[\(studentNumbr), \(age)살]")
//        print("""
//        \(name)님의 Swift 점수는 \(scoreSwift)점입니다.
//        \(name)님의 IOS 점수는 \(scoreIos)점입니다.
//        \(name)님의 Web 점수는 \(scoreWeb)점입니다.
//        """)
//    }
//}
//
//let student1: student = student(name: "홍길동", studentNumbr: "20200677", age: 22, scoreSwift: 50, scoreIos: 89, scoreWeb: 77)
//
//let student2: student = student(name: "김영희", studentNumbr: "20190541", age: 26, scoreSwift: 90, scoreIos: 85, scoreWeb: 70)
//
//student1.show()
//print("=============")
//student2.show()

//class 예제4
//class Person {
//    var name: String
//    var age: Int
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//
//    func getName() -> String {
//        return name
//    }
//
//    func setName(initName: String) {
//        name = initName
//    }
//
//    func getAge() -> Int {
//        return age
//    }
//
//    func setAge(initAge: Int) {
//        age = initAge
//    }
//}
//
//let person1: Person = Person(name: "홍세희", age: 23)
//let person2: Person = Person(name: "홍길동", age: 25)
//
//print("st1 객체 학생 이름: \(person1.getName()), 나이: \(person1.getAge())")
//print("st2 객체 학생 이름: \(person2.getName()), 나이: \(person2.getAge())")
//
//person1.setName(initName: "홍세히")
//print("st1 객체 학생 이름: \(person1.getName()), 나이: \(person1.getAge())")


//class 예제5
//class Calculator {
//    var number1: Int
//    var number2: Int
//    init(number1: Int, number2: Int) {
//        self.number1 = number1
//        self.number2 = number2
//    }
//
//    func setNum1(number: Int) {
//        number1 = number
//    }
//
//    func setNum2(number: Int) {
//        number2 = number
//    }
//
//    func sum() -> Int {
//        return number1 + number2
//    }
//
//    func sub() -> Int {
//        return number1 - number2
//    }
//
//    func mul() -> Int {
//        return number1 * number2
//    }
//
//    func div() -> Int {
//        return number1 / number2
//    }
//
//}
//
//let cal: Calculator = Calculator(number1: 3, number2: 4)
//print("더한 값:", cal.sum())
//
//cal.setNum1(number: 75)
//cal.setNum2(number: 5)
//
//print("""
//뺀 값: \(cal.sub())
//곱한 값: \(cal.mul())
//나눈 값: \(cal.div())
//""")

//class 예제
//class Tv {
//    var name: String
//    var year: Int
//    var size: Int
//    init(name: String, year: Int, size: Int) {
//        self.name = name
//        self.year = year
//        self.size = size
//    }
//    func show() {
//        print("\(name)에서 만든 \(year)년형 \(size)인치 TV")
//    }
//}
//
//let myTV = Tv(name: "LG", year: 2023, size: 48)
//print(myTV.show())

////MARK: - 배열 예제
//func solution(num1: Int, num2: Int) -> Int {
//    let ddaroAB = Int("\(num1)\(num2)")!
//    let subAB = 2 * num1 * num2
//
//    if ddaroAB >= subAB {
//        return ddaroAB
//    } else {
//        return subAB
//    }
//}
//
//let result = solution(num1: 1, num2: 23)
//print(result)

//
////예제 1
////1
//var numbers: Array<Int> = []
////2
//var numbers = [Int](repeating: 0, count: 10)
//
////3
//for i in 0..<numbers.count {
//    numbers[i] = Int.random(in: 1...20)
//}
//
//var total = 0
//for i in 0..<numbers.count {
//    print(numbers[i], terminator: " ")
//    total += numbers[i]
//}
//
////예제2
//var array: [Int] = [1, 2, 3, 4, 5, 6]
//array = array.filter{ $0 % 2 == 0}
//print(array)
//
////예제3
//var array: [Int] = [1, 2, 3, 4, 5, 6]
//var newArray: [Int] = []
//
//for i in 0..<array.count {
//    if array[i] % 2 != 0 {
//        newArray.append(array[i])
//    }
//}
//print("array에 들어있는 홀수는 \(newArray)이며, 총 \(newArray.count)개 입니다.")
//
////예제4
//var array: [Int] = [20, 12, 31, 4, 5, 35, 6]
//array = array.sorted()
//print("가장 큰 값은 \(array[array.count - 1])입니다. ")
//
////예제5
//var array: [Int] = [20, 12, 31, 4, 5, 35, 6]
//
//array = array.sorted() //방법1
//
//for _ in 0..<array.count { //방법2
//    for i in 0..<array.count - 1 {
//        if array[i] > array[i + 1] {
//            var temp = array[i]
//            array[i] = array[i + 1]
//            array[i + 1] = temp
//         }
//    }
//}
//print("가장 작은 값은 \(array[0])입니다. ")
//
////예제6
//print("=== 수박 게임 시작! ===")
//let numbers = input(message: "숫자를 입력해주세요: ")
//var watermelon: String = ""
//for i in 1...numbers {
//    if i % 2 == 0 {
//        watermelon += "박"
//    } else {
//        watermelon += "수"
//    }
//}
//print(watermelon)
//
////예제7
//var array = [Int](repeating: 0, count: 10)
//var newArray: [Int] = []
//
//for i in 0..<10 {
//   array[i] = input(message: "\(i+1)번째 정수 입력: ")
//}
//
//for i in 0..<10 {
//    if array[i] % 3 == 0 {
//        newArray.append(array[i])
//    }
//}
//
//print("3의 배수: \(newArray)")
//
////예제8
//var answers = [1, 1, 4, 2, 3]
//var results: String = ""
//var totalScores: Int = 0
//
//print("== 채점하기! ==")
//print("답을 입력하세요")
//
//for i in 0..<5 {
//    if answers[i] == input(message: "\(i + 1)번 답: ") {
//        results += "O "
//        totalScores += 5
//    } else {
//        results += "X "
//    }
//}
//
//print(results, "총점: ", totalScores)
//
////array 예제9
//func draxIndexStars() {
//    var arrayName = [Int](repeating: 0, count: Int.random(in: 1...10))
//    print("\(arrayName.count):", (String)(repeating: "*", count: arrayName.count))
//}
//
//draxIndexStars()
//draxIndexStars()
//draxIndexStars()
//draxIndexStars()

//MARK: - 프로토콜 정의하기
//protocol Cookable {
//    var license: String { get set }  //변수 정의
//
//    func cook()
//}
//
//extension Cookable {
//    func cook() {
//        print("\(license)의 김볶밥 만들기")
//    }
//}
//
//class Chef: Cookable {
//    var license: String
//    init(license: String) {
//        self.license = license
//    }
//}
//
//class Chef2: Chef {}
//
//let sh: Chef = Chef(license: "주방장")
//let sh2: Chef2 = Chef2(license: "주방장")
//sh.cook()
//sh2.cook()

//class Hello {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func printHello() {
//        print("\(self.name) hello!")
//    }
//}
//
//class Hello2: Hello {
//    override func printHello() {
//        print("\(super.name) bye")
//    }
//}
//
//class Hello3: Hello2 {
//    func printIntroduce() {
//        print("안녕하세요 저는 23살입니다.")
//    }
//}
//
//
//let h: Hello3 = Hello3(name: "홍세희")
//h.printHello()



//class Practice {
//    var number: Int
//    var newNumber: Int {
//        get{
//            return number
//        }
//        set(newNumber){
//            number = newNumber
//        }
//    }
//    init(number: Int) {
//        self.number = number
//    }
//}
//
//let numbers: Practice = Practice(number: 10)
//print(numbers.number)
//
//numbers.newNumber = 20
//print(numbers.number)
//
//print("ddddd")
//protocol Spring {
//
//}

//MARK: - 타입 캐스팅 예제를 위한 클래스 정의
//class Person {
//    var name: String = ""
//    func breath() {
//        print("숨을 쉽니다. ")
//    }
//}
//
//class Student: Person {
//    var school: String = ""
//    func goToSchool() {
//        print("등교하기")
//    }
//}
//
//class UniversityStudent: Student {
//    var major: String = ""
//    func goToMT() {
//        print("멤버쉽 트레이닝 간다.")
//    }
//}
//
//let sh: Person = Person()
//sh.name = "홍세희"
//
//let result = sh is Person
//print(result)


//func correctAnswer(_ subject: Array<String>) {
//     var result: String = ""
//     var totalAnswerCount = 0
//
//     for i in 0...subject.count-1 {
//         print("\(i + 1)과목 \(subject[i]): ", terminator: "")
//         let answerCount: Int = Int(readLine()!)!
//         totalAnswerCount += answerCount
//
//         if answerCount < 8 {
//             result = "불합격"
//         } else if totalAnswerCount >= 60 {
//             result = "합격"
//         }
//     }
//     print(result + "입니다!")
// }
// let subject: Array<String> = ["소프트웨어 설계", "소프트웨어 개발", "데이터베이스 구축", "프로그래밍 언어 활용", "정보시스템 구축관리"]
// correctAnswer(_ : subject)

