//
//  main.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/21.
//

import Foundation
//while 예제7
let userSum: Int = input(message: "예상되는 두 숫자의 합을 작성하시오: ") ?? userSum
let number1 = Int.random(in: 0...99)
let number2 = Int.random(in: 0...99)

print("==plus Game==")
print("\(number1) + \(number2) = \(userSum)")
if userSum == number1 + number2 {
    print("Success")
} else {
    print("Fail")
}

//while 예제8
var flag: Bool = true
print("==plus Game==")
while flag {
    print("예상되는 두 숫자의 합을 작성하시오: ", terminator: "")
    let userSum = Int(readLine()!)!
    
    var number1 = Int.random(in: 0...99)
    var number2 = Int.random(in: 0...99)
    
    print("\(number1) + \(number2) = \(userSum)")
    if userSum == number1 + number2 {
        print("Success")
        print("계속 하시겠습니까? (Y/N):", terminator: "")
        let yesOrNo = readLine()!
        
        if yesOrNo == "N" {
            flag = false
        }
    } else {
        print("Fail")
        flag = false
    }
}

