//
//  day2.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/22.
//

//입력받고 숫자로 변환
func input(message: String) -> Int {
    print(message, terminator: "")
    guard let inputValue = readLine(), let inputValue = Int(inputValue) else {
        print("입력값이 잘못되었습니다.")
        return input(message: message)
    }
    return inputValue
}

//문자 그대로 입력
func inputString(message: String) -> String {
    print(message, terminator: "")
    guard let inputValue = readLine() else {
        print("입력값이 잘못되었습니다.")
        return inputString(message: message)
    }
    return inputValue
}

