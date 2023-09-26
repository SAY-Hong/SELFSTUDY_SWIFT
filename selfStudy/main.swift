//
//  main.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/21.
//

import Foundation

// MARK: - 함수 예제1
//func addNumber(number1: Int, number2: Int) {
//    print("연산결과:", number1 + number2)
//}
//
//let number1 = input(message: "1번째 수: ")
//let number2 = input(message: "2번째 수: ")
//
//addNumber(number1: number1, number2: number2)

// MARK: - 함수 예제2
//func largeNumbers(number1: Int, number2: Int) {
//    if number1 > number2 {
//        print("큰 수 확인: ", number1)
//    } else if number1 < number2 {
//        print("큰 수 확인: ", number2)
//    } else {
//        print("큰 수 확인: 0")
//    }
//}
//
//let number1 = input(message: "1번째 수: ")
//let number2 = input(message: "2번째 수: ")
//
//largeNumbers(number1: number1, number2: number2)

// MARK: - 함수 예제3
//func close10(number1: Int, number2: Int) {
//    let number1Result = (10-number1 < 0) ? number1 - 10 : 10 - number1
//    let number2Result = (10-number2 < 0) ? number2 - 10 : 10 - number2
//
//    if number1Result > number2Result {
//        print("10에 가까운 수: ", number2)
//    } else if number1Result < number2Result {
//        print("10에 가까운 수: ", number1)
//    } else {
//        print("10에 가까운 수: 0")
//    }
//}
//
//let number1 = input(message: "1번째 수: ")
//let number2 = input(message: "2번째 수: ")
//close10(number1: number1, number2: number2)

// MARK: - 함수 예제4 - while문 사용
//func powerN(base: Int, n: Int) {
//    var count = 0
//    var result = 1
//    while true {
//        result *= base
//        count += 1
//        if count == n {
//            break
//        }
//    }
//    print("결과 확인: ", result)
//}
//
//let number1 = input(message: "1번째 수: ")
//let number2 = input(message: "2번째 수: ")
//powerN(base: number1, n: number2)


// MARK: - 함수 예제5
//func getAbsoluteValue(num1: Int, num2: Int) {
//    let result = (num1 - num2 < 0) ? num2 - num1 : num1 - num2
//    print("결과 확인: ", result)
//}
//
//let number1 = input(message: "1번째 수: ")
//let number2 = input(message: "2번째 수: ")
//getAbsoluteValue(num1: number1, num2: number2)

// MARK: - 함수 예제6
//func isDivide(_ num1: Int, to num2: Int) {
//    if num1 % num2 == 0 {
//        print("결과 확인: true")
//    } else {
//        print("결과 확인: flase")
//    }
//}
//let number1 = input(message: "1번째 수: ")
//let number2 = input(message: "2번째 수: ")
//isDivide(_ : number1, to: number2)

// MARK: - 함수 예제7
var dividedNumber:[Int] = []
func getDivisor(number: Int) -> Array<Int> {
    var dividedNumber:[Int] = []
    print("\(number)의 약수: ", terminator: "")
    for i in 1...number {
        if number % i == 0 {
            dividedNumber.append(i)
        }
    }
    return dividedNumber
}

// MARK: - 함수 예제8
func  getSumOfDivisors(numberArray: [Int]) {
    print("\(number)의 약수의 합: ", terminator: "")
    var total = 0
    //print(numberArray.reduce(0, +))
    print(numberArray.reduce(0){ $0 + $1 })
}

let number = input(message: "정수를 입력하시오: ")
dividedNumber = getDivisor(number: number)
print(dividedNumber.map( {String($0)} ).joined(separator: ", ")) //예제7
getSumOfDivisors(numberArray: dividedNumber) //예제8
