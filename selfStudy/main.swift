//
//  main.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/21.
//

import Foundation
//while 예제1
/*var inputNumber: Int = 0

while true {
    inputNumber = input(message: "정수 입력: ") ?? inputNumber
    if inputNumber > 10 {
        print("종료되었습니다.")
        break
    }
}*/

//while 예제2
var presentWeight: Int = 0
var goalWeight: Int = 0
var dietKg: Int = 0

presentWeight = input(message: "현재 몸무게: ") ?? presentWeight
goalWeight = input(message: "목표 몸무게: ") ?? goalWeight
while true {
    var week: Int = 1
    dietKg = input(message: "\(week)주차 감량 몸무게: ") ?? dietKg
    week += 1
    presentWeight -= dietKg
    
    if presentWeight <= goalWeight {
        print("\(presentWeight)kg 달성! 축하합니다!")
        break
    }
}

//while 예제3, 4
let userID = "Hello"
let password = 1234

while true {
    print("아이디 입력 :", terminator: "")
    let id = readLine()!
    print("비밀번호 입력 :", terminator: "")
    let pw = Int(readLine()!)!
    
    if userID == id && password == pw {
        print("로그인 성공!\n")
        break
    } else {
        print("아이디와 비밀번호가 잘못되었습니다. \n")
    }
}

//while 예제5
let userID = "Hello"
let password = 1234

while true {
    print("아이디 입력 :", terminator: "")
    let id = readLine()!
    print("비밀번호 입력 :", terminator: "")
    let pw = Int(readLine()!)!
    
    if userID == id && password == pw {
        print("로그인 성공!\n")
        print("종료되었습니다. ")
        break
    } else {
        print("아이디와 비밀번호가 잘못되었습니다.")
        print("계속 하시겠습니까? (Y/N) ", terminator: "")
        let yesOrNo = readLine()!
        print("\n")
        if yesOrNo == "N" {
            print("종료되었습니다. ")
            break
        } else if yesOrNo == "Y"{
            continue
        }
    }
}

//6
let userID = "Hello"
let password = 1234

while true {
    print("첫 번째 정수를 입력하세요 :", terminator: "")
    let num1 = Int(readLine()!)!
    print("두 번째 정수를 입력하세요 :", terminator: "")
    let num2 = Int(readLine()!)!
    print("1.더하기 2.빼기 :", terminator: "")
    let plusOrMinus = Int(readLine()!)!
    
    if plusOrMinus == 1 {
        print("더하기 연산 결과는 \(num1 + num2)입니다.")
        print("계속 하시겠습니까? (Y/N) ", terminator: "")
        let yesOrNo = readLine()!
        print("\n")
        if yesOrNo == "N" {
            print("종료되었습니다. ")
            break
        } else if yesOrNo == "Y"{
            continue
        }
    } else if plusOrMinus == 2 {
        print("빼기  연산 결과는 \(num1 - num2)입니다.")
        print("계속 하시겠습니까? (Y/N) ", terminator: "")
        let yesOrNo = readLine()!
        print("\n")
        if yesOrNo == "N" {
            print("종료되었습니다. ")
            break
        } else if yesOrNo == "Y"{
            continue
        }
    }
}
