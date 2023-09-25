//
//  main.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/21.
//

import Foundation
//예제6
for danNuber in 1...9 {
    print("\(danNuber)단: ", terminator: "")
    for number in 1...9 {
        print("\(danNuber) * \(number) = \(danNuber * number)", terminator: "\t")
    }
    print("")
}
//예제7
let number = input(message: "정수 입력: ")
for i in 1...number {
    if number % i == 0 {
        print(i, terminator: " ")
    }
}

//예제 8
for number in 2...30 {
    print("\(number)의 약수: ", terminator: "")
    for i in 1...number {
        if number % i == 0{
            print(i, terminator: " ")
        }
    }
    print("")
}

//예제9-1
for i in 1...5 {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print("")
}

//예제 9-2
for i in (1...5).reversed() {
    var stars: String = ""
    for _ in (1...i).reversed() {
        stars += "*"
    }
    print(stars)
}

//예제9-3
for i in 1...5 {
    var stars: String = ""
    for _ in 0..<5-i {
        stars += " "
    }
    for _ in 1...i {
        stars += "*"
    }
    print(stars)
}

//예제9-3-(2)
for i in 1...5 {
    for _ in 0..<5-i {
        print(" ", terminator: "")
    }
    for _ in 1...i {
        print("*", terminator: "")
    }
    print("")
}

//예제9-4
for i in 1...5 {
    var stars: String = ""
    for _ in 0..<5-i {
         stars += " "
    }
    for _ in 1...i*2 {
        stars += "*"
    }
    print(stars)
}
for i in (1...5).reversed() {
    var stars: String = ""
    for _ in 0..<5-i {
         stars += " "
    }
    for _ in 1...i*2 {
        stars += "*"
    }
    print(stars)
}

//예제9-4-(2)
for i in 1...5{
    let spaces = String(repeating: " ", count: 6 - i)
    let stars = String(repeating: "**", count: i)
    print(spaces + stars)
}
for i in (1...5).reversed(){
    let spaces = String(repeating: " ", count: 6 - i)
    let stars = String(repeating: "**", count: i)
    print(spaces + stars)
}

//예제10
for i in 0...9 {
    for j in 0...9 {
        var totalStars = ""
        if i == 3 || i == 6 || i == 9{
            totalStars += "*"
        }
        if j == 3 || j == 6 || j == 9 {
            totalStars += "*"
        }
        print(String(i) + String(j) + totalStars)
        totalStars = ""
    }
}
