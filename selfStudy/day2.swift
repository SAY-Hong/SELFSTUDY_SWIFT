//
//  day2.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/22.
//


var money: Int = 0
var menuNumber: Int = 0

func input(message: String) -> Int {
    print(message, terminator: "")
    guard let inputValue = readLine(), let inputValue = Int(inputValue) else {
        print("입력값이 잘못되었습니다.")
        return input(message: message)
    }
    return inputValue
}
