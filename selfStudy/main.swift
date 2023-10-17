//
//  main.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/21.
//

import Foundation
//MARK: -재귀함수 예제1
/*func count(_ a: [Int]) -> Int {
    if a.isEmpty {
        return 0
    }else{
        print(type(of: Array(a.dropFirst())))
        print(type(of: a.dropFirst()))
        return 1 + count(Array(a.dropFirst()))
    }
}

print(count([1, 2, 3]))*/

//MARK: -재귀함수 예제2
/*func findMax(_ a: [Int]) -> Int {
    if a.isEmpty {
        return 0
    } else {
        return findMax(<#T##a: [Int]##[Int]#>)
    }
}*/

//MARK: -재귀함수 예제3 (일반 함수 버전 - 배열 출력)
/*func fibbo(_ n: Int) -> [Int] {
    var arr: [Int] = []
    if n <= 1 {
        arr.append(1)
        return arr
    } else if n == 2 {
        arr.append(1)
        return arr
    } else {
        arr = [1, 1]
        for _ in 2...n-1 {
            var number = arr[arr.count - 1] + arr[arr.count - 2]
            arr.append(number)
        }
        return arr
    }
}

print(fibbo(_: 10))*/

//MARK: -재귀함수 예제3 (일반 함수 버전 - 원하는 항 출력)
/*func fibbo(_ n: Int) -> Int {
    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    }
    var n1 = 0
    var n2 = 1
    var result = 0
    
    for _ in 2...n {
        result = n1 + n2
        n1 = n2
        n2 = result
    }
    return result
}

print(fibbo(10))*/

//MARK: -재귀함수 예제4 (재귀함수 버전)
/*func fibbo(_ n: Int) -> Int {
    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    } else {
        return fibbo(n-1) + fibbo(n-2)
    }
}

var n = 10
print(fibbo(_ : n))*/

//MARK: -퀵 정렬
/*func quicksort(_ a: [Int]) -> [Int]{
    //guard - let으로 a의 원소 개수가 0개 보호
    guard let pivot = a.first else {
        return []
    }
    var left: [Int] = []
    var right: [Int] = []
    
    left = a.filter {$0 < pivot}
    right = a.filter {$0 > pivot}
    
    return quicksort(left) + [pivot] + quicksort(right)
}

print(quicksort([2,7,4,5,6,9,0]))*/

//MARK: -퀵 정렬(for문으로 작성하기)
/*func quickSort(_ a: [Int]) -> [Int] {
    var pivot: Int = 0
    
    if a.count == 0 {
        return []
    } else {
        pivot = a[a.count / 2]
    }
    var left: [Int] = []
    var right: [Int] = []
    
    for i in 0...a.count - 1 {
        if a[i] < pivot {
            left.append(a[i])
        }
        if a[i] > pivot {
            right.append(a[i])
        }
    }
    return quickSort(left) + [pivot] + quickSort(right)
}

print(quickSort([2,7,4,5,6,9,0]))*/

//MARK: append와 insert
/*var array = [1, 2, 2, 3]
array.forEach { value in
    print(value)
}

print("==========")
array.forEach {
    print($0)
}*/

import Foundation

/*let s1 = "AbcDEfG"
 
for i in s1 {
    if i.isUppercase {
        print(i.lowercased(), terminator: "")
    } else {
        print(i.uppercased(), terminator: "")
    }
}

print(s1)*/

/*let workHour = 9
let money = 10000

let plusMoney: Double = Double(money) * 1.5
let totalMoney = (workHour - 8) * Int(plusMoney) + 8 * money

print(totalMoney)*/


//MARK: '세 개의 구분자'
/*var arr: [String] = []
var arrIndex: [Int] = []
var total = ""
var string = "cababx"
var result: [String] = []

for i in string {
    arr.append(String(i))
}

for i in 0...arr.count - 1 {
    if arr[i] == "a" || arr[i] == "b" || arr[i] == "c"{
        arrIndex.append(i)
    }
}

if !arrIndex.contains(arr.count - 1) {
    arrIndex.append(arr.count)
}

for i in 1..<arrIndex.count {
    total = ""
    for z in 0..<arr.count {
        if z > arrIndex[i - 1] && z < arrIndex[i] {
            total += arr[z]
        }
    }
    if total != "" {
        result.append(total)
    }
}

if result.isEmpty {
    result.append("EMPTY")
}

print(result)*/

//MARK: 세 개의 구분자 ver2
/*var result: [String] = []
var words = ""
var string = "baconlettucetomato"

for str in string {
    if "abc".contains(str) {
        if !words.isEmpty {
            result.append(words)
            words = ""
        }
    } else {
        words += String(str)
    }
}

if !words.isEmpty {
    result.append(words)
}

if result.isEmpty {
    result = ["EMPTY"]
}

print(result)*/

//MARK: 클로저
/*func functionA() -> (() -> (Int)) {
    var count = 0
    func functionB() -> Int {
        return count + 10
    }
     return functionB
}

var a = functionA()

print(a)*/

//MARK: 후행 클로저
//뒤에 클로저를 작성하겠다.
//함수의 인수이지만 함수 호출의 소괄호 다음에 작성하는 것을 말한다.


//후행 클로저하다가 갑자기 프로토콜로 넘어온다구요?
//MARK: 프로토콜.. 갑자기..?
//타입이 구현해야하는 요구사항을 정의하는 규칙들의 집합. -> 필수 요구사항을 정의하는 것.
//클래스가 반드시 포함해야하는 메서드와 프로퍼티를 정의.

//규칙을 받아서 써라! 라는 의미인 프로토콜
/*protocol MessageBuilder {
    var name: String {
        get //단축표현으로 사용. -> 값을 담을 수 있는 용도다 라는 것을 명시해준다.
    }
    func buildMessage() -> String
}

class MyClass: MessageBuilder {
    var name: String
    init(name: String) {
        self.name = name
    }
    func buildMessage() -> String {
        return name
    }
}

let a: MyClass = MyClass(name: "홍세희")
print(a.name)*/

//TODO: 쓰레드 공부?
//MARK: 프로퍼티 래퍼
/*struct Address {
    private var cityname = ""
    
    var city: String {
        get { cityname }
        set { cityname = newValue.uppercased() }
    }
}

var address = Address()
address.city = "London"
print( address.city )

@propertyWrapper
struct FixCase {
    private(set) var value: String = ""
    
    var wrappedValue: String {
        get { value }
        set { value = newValue.uppercased()}
    }
    
    init(value: String) {
        self.value = value
    }
//    init(wrappedValue initValue: String) {
//        self.wrappedValue = initValue
//    }
    
}


struct Contact {
    @FixCase var name: String
    @FixCase var city: String
}

var contract = Contact(name: "pArk", city: "sEouL")
print(contract.name, contract.city)*/

/*func solution(_ num_list:[Int]) -> Int {
    var num = 0
    var num1 = 1
    var result: Int = 0
    
    for i in 0..<num_list.count {
        if 11 <= num_list.count {
            num += num_list[i]
            result = num
        } else {
            num1 *= num_list[i]
            result = num1
        }
        
    }
    return result
}

print(solution([2, 3, 4, 5]))*/

/*var num_list = [2, 3, 4, 5]
var num = 0
var num1 = 1

for i in 0..<num_list.count {
    if 11 <= num_list.count {
        num += num_list[i]
    } else {
        num1 *= num_list[i]
    }
    
    if 11 <= num_list.count {
        return num
    } else {
        return num1
    }
}*/
/*var a = [2, 3, 4, 5, 6]
//var b = a.reduce(0) { $0 * $1 }
var b = a.reduce(1) { partialResult, i in
    partialResult * i
}

print(b)*/

/*var num = "123"
var num1 = Array(num)
var result = 0*/


/*func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var arr = arr
    for i in 0..<query.count {
        if(i % 2 == 0){
            var originCount = arr.count
            for _ in 1..<(originCount - query[i]) {
                arr.remove(at: arr.count - 1)
                print("짝",arr)
            }
        }else{
            for _ in 0..<query[i] {
                arr.remove(at: 0)
                print("홀",arr)
            }
        }
    }
    return arr
}

print(solution([0, 1, 2, 3, 4, 5], [4, 1, 2]))*/

//MARK: 프로토콜
/*protocol SelfIntroduce {
    var name: String { get }
    var phone: Int { get }
    
    func age()
}


class Hisayhee: SelfIntroduce {
    var name: String
    var phone: Int
    
    init(name: String, phone: Int) {
        self.name = name
        self.phone = phone
    }
    
    func age() {
         print("\(name)은 23살입니다.")
    }
}

//상속
class HisayHonh: Hisayhee {
    
}
let hong: Hisayhee = Hisayhee(name: "홍세희", phone: 010)
hong.age()

let honh: HisayHonh = HisayHonh(name: "혼세희", phone: 12)
honh.age()*/

//MARK: 상속 예제 5
/*class Animal {
    var name: String?
    
    init(name: String? = nil) {
        self.name = name
    }
    
    func makeSound() {
        //guard let nickname = name else { return print("동물이 입력되지 않았습니다!")}
        print("각 동물들의 울음소리")
    }
}
class Cat: Animal {
    override func makeSound() {
        guard let nickname = name else { return print("동물이 입력되지 않았습니다!")}
        print("\(nickname)은 고양이이고 울음소리는 야옹이다.")
    }
}

class Dog: Animal {
    override func makeSound() {
        guard let nickname = name else { return print("동물이 입력되지 않았습니다!")}
        print("\(nickname)은 강아지이고 울음소리는 멍멍이다.")
    }
}

let cat: Cat = Cat(name: nil)
cat.makeSound()

let dog: Dog = Dog(name: "꿈이")
dog.makeSound()*/

//MARK: 상속 예제 6
/*class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func introduce() {
        print("저는 \(name)이고 \(age)살 입니다.")
    }
    
}

class Student: Person {
    var classNumber: Int
    var gradeNumber: Int
    
    init(name: String, age: Int, classNumber: Int, gradeNumber: Int) {
        self.classNumber = classNumber
        self.gradeNumber = gradeNumber
        super.init(name: name, age: age)
    }
    
    override func introduce() {
        print("저는 \(name)이고, \(age)살 입니다. 저는 \(gradeNumber)학년 \(classNumber)반입니다.")
    }
}

class Teacher: Person {
    var subject: String
    
    init(name: String, age: Int, subject: String) {
        self.subject = subject
        super.init(name: name, age: age)
    }
    
    override func introduce() {
        print("저는 \(name)이고, \(age)살 입니다. 저는 \(subject) 선생님입니다. ")
    }
}


let student: Person = Student(name: "민수", age: 15, classNumber: 2, gradeNumber: 3)
let teacher: Person = Teacher(name: "영희", age: 25, subject: "수학")
student.introduce() // 저는 민수이고, 15살입니다. 저는 2학년 3반입니다.
teacher.introduce() // 저는 영희이고, 25살입니다. 저는 수학 선생님입니다.*/


//MARK: 상속 예제7
/*class Figure {
    var color: String
    init(color: String) {
        self.color = color
    }
    
    func getArea() -> Double {
        return 0.0
    }
}

class Triangle: Figure {
    var base: Double
    var height: Double
    
    init(color: String, base: Double, height: Double) {
        self.base = base
        self.height = height
        super.init(color: color)
    }
    
    override func getArea() -> Double {
        return base*height/2
    }
    
}


class Rectangle: Figure {
    var width: Double
    var length: Double
    
    init(color: String, width: Double, length: Double) {
        self.width = width
        self.length = length
        super.init(color: color)
    }
    override func getArea() -> Double {
        return width*length
    }
    
}

let triangle = Triangle(color: "red", base: 3, height: 4)
let rectangle = Rectangle(color: "blue", width: 5, length: 6)
print(triangle.getArea()) // 6.0
print(rectangle.getArea()) // 30.0*/

//MARK: 상속 예제16
//class Animal {
//    var name: String
//    var age: Int
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    
//    func cry() {
//        
//    }
//}
//
//class Cat: Animal {
//    var meow: String
//    init(name: String, age: Int, meow: String) {
//        self.meow = meow
//        super.init(name: name, age: age)
//    }
//    override func cry() {
//        print("\(name)이(가) \(meow)라고 울어요.")
//    }
//}
//
//class Dog: Animal {
//    var bark: String
//    init(name: String, age: Int, bark: String) {
//        self.bark = bark
//        super.init(name: name, age: age)
//    }
//    override func cry() {
//        print("\(name)이(가) \(bark)라고 짖어요.")
//    }
//}
//
//class Duck: Animal {
//    var bark: String
//    init(name: String, age: Int, bark: String) {
//        self.bark = bark
//        super.init(name: name, age: age)
//    }
//    override func cry() {
//        print("\(name)이(가) \(bark)라고 짖어요.")
//    }
//}
//
//let kitty = Cat(name: "나비", age: 3, meow: "야옹")
//let puppy = Dog(name: "초코", age: 2, bark: "멍멍")
//let duck = Duck(name: "멋쟁", age: 2, bark: "꽥꽥")
//
//let animals: [Animal] = [kitty, puppy, duck]
///*animals[0].cry()    // 나비이(가) 야옹라고 울어요.
//animals[1].cry()    // 초코이(가) 멍멍라고 짖어요.
//animals[2].cry()  */  // 멋쟁이(가) 꽥꽥라고 짖어요.
//
//animals.forEach { Animal in
//    Animal.cry()
//}

//MARK: 상속 11
//class Q {
//    func add(a: Int, b: Int) -> Int {
//        return a + b
//    }
//
//    func add(a: Double, b: Double) -> Double {
//        return a + b
//    }
//}
//
//class P: Q {
//    func add(a: Int, b: Int, c: Int) -> Int {
//        return a + b + 1
//    }
//}

//MARK: 상속 14
//class Vehicle {
//    var model: String
//    var color: String
//    
//    init(model: String, color: String) {
//        self.model = model
//        self.color = color
//    }
//    
//    func drive() {
//        print("\(model) \(color)", terminator: " ")
//    }
//}
//
//class Car: Vehicle {
//    var doorNumber: Int
//    init(model: String, color: String, doorNumber: Int) {
//        self.doorNumber = doorNumber
//        super.init(model: model, color: color)
//    }
//    override func drive() {
//        //부모 클래스를 직접 받아서 출력하기!
//        super.drive()
//        print("자동차가 \(doorNumber)개의 문을 열고 달립니다. ")
//    }
//}
//
//class Motorcycle: Vehicle {
//    var helmet: Bool
//    init(model: String, color: String, helmet: Bool) {
//        self.helmet = helmet
//        super.init(model: model, color: color)
//    }
//    override func drive() {
//        //부모 클래스의 함수 부분에 아무것도 없을 때
//        if(helmet) {
//            print("\(model) \(color) 오토바이가 헬멧을 쓰고 달립니다.")
//        } else {
//            print("\(model) \(color) 오토바이가 헬멧을 쓰지 않고 달립니다.")
//        }
//        
//    }
//}
//let car: Vehicle = Car(model: "소나타", color: "검정", doorNumber: 4)
//let motorcycle: Vehicle = Motorcycle(model: "니노", color: "노랑", helmet: false)
//car.drive()
//motorcycle.drive()
//

//MARK: 열거형 예제2
//enum Animal {
//    case dog(name: String)
//    case cat(name: String)
//    case bird(name: String)
//}
//
//func checkAnimal(animals: [Animal]){
//    animals.forEach { animal in
//        switch animal {
//        case .dog(let name): print("이 동물은 개이고 이름은 \(name)입니다.")
//        case .cat(let name): print("이 동물은 고양이이고 이름은 \(name)입니다.")
//        case .bird(let name): print("이 동물은 새이고 이름은 \(name)입니다.")
//        }
//    }
//}
//
//let animals = [Animal.dog(name: "바둑이"), Animal.cat(name: "나비"), Animal.bird(name: "짹짹이")]
//checkAnimal(animals: animals)



//MARK: 열거형 예제3
//enum Season {
//    case spring
//    case summer
//    case fall
//    case winter
//}
//
//func getSeason(date: (month: Int, day: Int)) -> Season {
//    switch date.month {
//    case 3...5:
//        return .spring
//    case 6...8:
//        return .summer
//    case 9...11:
//        return .fall
//    default:
//        return .winter
//    }
//}
//
//let today = (month: 10, day: 17)
//let season = getSeason(date: today)
//
//print("오늘은 \(season)입니다.")  // 오늘은 autumn입니다.
//print("오늘은 \( getSeason(date: (month: 6, day: 17)) )입니다.")      // 오늘은 summer입니다.
//print("오늘은 \( getSeason(date: (month: 12, day: 15)) )입니다.")     // 오늘은 winter입니다.
//print("오늘은 \( getSeason(date: (month: 3, day: 1)) )입니다.")       // 오늘은 spring입니다.

//MARK: 열거형 예제4
//enum Option {
//    case add
//    case subtract
//    case multiply
//    case divide
//}
//
//func calculate(num1: Int, num2: Int, op: Option) -> Int {
//    switch op {
//    case .add:
//        return num1 + num2
//    case .subtract:
//        return num1 - num2
//    case .multiply:
//        return num1 * num2
//    default:
//        return num1 / num2
//    }
//}
//
//let result = calculate(num1: 10, num2: 5, op: .divide)
//
//print("결과는 \(result)입니다.")      //결과는 2입니다.
//print("결과는 \( calculate(num1: 10, num2: 5, op: .add) )입니다.")        //결과는 15입니다.
//print("결과는 \( calculate(num1: 10, num2: 5, op: .subtract) )입니다.")   //결과는 5입니다.
//print("결과는 \( calculate(num1: 10, num2: 5, op: .multiply) )입니다.")   //결과는 50입니다.

//MARK: 열거형 예제5
//enum Beverage {
//    case coffee(price: Int)
//    case tea(price: Int)
//    case juice(price: Int)
//}
//
//func printTypeAndPrice(beverages: [Beverage]) {
//    beverages.forEach { beverages in
//        switch beverages {
//        case .coffee(let price): print("이 음료는 커피이고 가격은 \(price)입니다.")
//        case .tea(let price): print("이 음료는 차이고 가격은 \(price)입니다.")
//        case .juice(let price): print("이 음료는 주스이고 가격은 \(price)입니다.")
//        }
//    }
//}
//
//let beverages = [Beverage.coffee(price: 3000), Beverage.tea(price: 2000), Beverage.juice(price: 2500)]
//printTypeAndPrice(beverages: beverages)
