//
//  day2.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/22.
//


var money: Int = 0
var menuNumber: Int = 0

func input(message: String) -> Int? {
    print(message, terminator: "")
    guard let inputValue = readLine(), let inputValue = Int(inputValue) else {
        print("입력값이 잘못되었습니다.")
        return nil
    }
    return inputValue
}

/*money = input(message: "금액 입력: ") ?? money
menuNumber = input(message: """
메뉴를 고르세요
1. 콜라(800원) 2. 생수(500원) 3.비타민워터(1500원):
""") ?? menuNumber*/
