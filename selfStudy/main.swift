//
//  main.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/21.
//

import Foundation
//while 예제1
var inputNumber: Int = 0

while true {
    inputNumber = input(message: "정수 입력: ") ?? inputNumber
    if inputNumber > 10 {
        print("종료되었습니다.")
        break
    }
}


