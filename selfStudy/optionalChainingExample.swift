//
//  optionalChainingExample.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/10/25.
//

import Foundation
//MARK: 옵셔널 체이닝 예제 01
//struct Person {
//    var name: String?
//    var age: Int?
//}
//
//var person: Person? = Person(name: "Kim", age: 25)

//if let name = person?.name {
//    print(name)
//} else {
//    print("이름이 입력되지 않았습니다!")
//}
//
//if let age = person?.age {
//    print(age)
//} else {
//    print("나이가 입력되지 않았습니다!")
//}

//print(person?.name ?? " ")
//print(person?.age ?? 0 )

//MARK: 옵셔널 체이닝 예제 02
//struct Author {
//    var name: String?
//}
//
//struct Book {
//    var title: String?
//    var author: Author?
//}
//
//var book: Book? = Book(title: "The Little Prince" , author: Author(name: "Antoine de Saint-Exupéry"))
//
//if let title = book?.title, let author = book?.author?.name {
//    print(title)
//    print(author)
//} else {
//    print("입력 값 없음. 확인하기.")
//}

//MARK: 옵셔널 체이닝 예제 03
//var numbers: [Int]? = [1, 2, 3]
//if let array = numbers {
//    print(array[0] + 10)
//} else {
//    print("배열 확인하기")
//}

//MARK: 옵셔널 체이닝 예제 04
//var students: [String: Int]? = ["Kim": 90, "Lee": 80, "Park": 85]
//
//if let array = students {
//    if let key = array["Lee"] {
//        print(key + 1)
//    } else {
//        print("키에 해당하는 값이 없습니다. ")
//    }
//} else {
//    print("딕셔너리가 없습니다.")
//}

//MARK: 옵셔널 체이닝 예제 05
//class Animal {
//    func speak() {
//        print("...")
//    }
//}
//
//class Dog: Animal {
//    override func speak() {
//        print("Woof")
//    }
//}
//
//var animal: Animal? = Dog()
//
//if let whatAnimal = animal {
//    print(whatAnimal.speak())
//} else {
//    print("X")
//}
//MARK: 옵셔널 체이닝 예제 06
//struct Matrix {
//    var elements: [[Int]]
//
//    func transpose() -> Matrix {
//        var result = [[Int]]()
//        for i in 0..<elements[0].count {
//            var row = [Int]()
//            for j in 0..<elements.count {
//                row.append(elements[j][i])
//            }
//            result.append(row)
//        }
//        return Matrix(elements: result)
//    }
//}
//
//var matrix: Matrix? = Matrix(elements: [[1, 2, 3], [4, 5, 6]])
//if let matrix = matrix {
//    print(matrix.transpose().elements)
//}
