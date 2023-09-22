//
//  main.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/21.
//

import Foundation

/*print("귤의 개수는? :", terminator: "")
let lorange = Int(readLine()!)

print("박스의 개수는? :", terminator: "")
let number = readLine()

let box: Int;

print(lorange!)
print(type(of: lorange))*/

/*let num: Int = 456
let hundread: Int = num / 100
let ten: Int = num % 100 / 10

let newNum: Int = hundread * 100 + ten * 10 + 1
print(newNum)
*/


/*print("Swift 점수입력: ", terminator: "")
let swiftScore = Int(readLine()!)
print("IOS 점수입력: ", terminator: "")
let iosScore = Int(readLine()!)
print("Web 점수입력: ", terminator: "")
let webScore = Int(readLine()!)

let total: Int = swiftScore! + iosScore! + webScore!
let average: Int = total / 3

print("합계: \(total)")
print("평균: \(average)")*/

/*func inputScore(subject: Array<String>) {
    var totalScore: Int = 0
    for i in 0...subject.count - 1 {
        print("\(subject[i]) 점수입력: ", terminator: "")
        let eachScore: Int = Int(readLine()!)!
        totalScore += eachScore
    }
    print("합계: \(totalScore)")
    print("평균: \(totalScore / subject.count)")
}

var subject: Array<String> = ["Swift", "IOS", "Web"]
inputScore(subject: subject)*/


//삼항연산자
/*let x = 10
let y = 20

print("result: ", x > y ? x : y)*/

//연산자 예제6
/*print("초 입력: ", terminator: "")
let totalSecond:Int = Int(readLine()!)!


let hour: Int = totalSecond / 3600
print(hour)

let minute: Int = totalSecond % 3600 / 60
print(minute)

let second: Int = totalSecond % 3600 % 60
print(second)

print("\(hour)시 \(minute)분 \(second)초")*/


//연산자 예제7
/*print("노동 시간 입력: ", terminator: "")
let workHour: Int = Int(readLine()!)!

var money: Int = 5000
var totalMoney: Int

if workHour > 8 {
    let plusMoney: Double = Double(money) * 1.5
    totalMoney = (workHour - 8) * Int(plusMoney) + 8 * money
    print("총 임금은 \(totalMoney)원 입니다. ")
} else {
    money = 5000
    totalMoney = workHour * money
    print("총 임금은 \(totalMoney)원 입니다. ")
}*/


//연산자 예제8
/*print("정수 입력: ", terminator: "")
let integer: Int = Int(readLine()!)!

var result: String = integer % 2 == 0 ? "짝수" : "홀수"
print("\(integer)(은)는 \(result)입니다. ")*/


//연산자 예제9
/*print("첫번째 정수 입력: ", terminator: "")
let firstNum: Int = Int(readLine()!)!

print("두번째 정수 입력: ", terminator: "")
let secondNum: Int = Int(readLine()!)!

let result: Int = firstNum > secondNum ? firstNum - secondNum : secondNum - firstNum
print("두 수의 차: ", result)*/

//연산자 예제 10
/*print("농구공의 개수를 입력하세요: ", terminator: "")
let count: Int = Int(readLine()!)!

let boxCount: Int
if count % 5 == 0 {
    boxCount = count / 5
    print("필요한 상자 수: \(boxCount)")
} else {
    boxCount = count / 5
    print("필요한 상자 수: \(boxCount + 1)")
}*/

//조건문 예제
/*print("나이를 입력하시오: ", terminator: "")
let age: Int = Int(readLine()!)!

if age >= 20 {
    print("성인입니다. ")
} else {
    print("미성년자입니다. ")
}*/

//조건문 예제2
/*print("숫자를 입력하시오: ", terminator: "")
let number: Int = Int(readLine()!)!
 
 if number % 3 == 0 && number % 5 == 0 {
 print("3과 5의 배수입니다. ")
 }*/
 

//조건문 예제3
/*print("점수를 입력하시오: ", terminator: "")
let grade: Int = Int(readLine()!)!

if grade >= 60 {
    print("합격입니다. ")
} else {
    print("불합격입니다. ")
}*/

//조건문 예제4
/*print("정수를 입력하시오: ", terminator: "")
let integer: Int = Int(readLine()!)!

if integer > 0 {
    print("\(integer) 양수입니다.")
} else if integer == 0 {
    print("0 입니다.")
} else {
    print("\(integer) 음수입니다.")
}
*/
//조건문 예제5
/*print("Num1: ", terminator: "")
let integer1: Int = Int(readLine()!)!

print("Num2: ", terminator: "")
let integer2: Int = Int(readLine()!)!

if integer1 > integer2 {
    print("둘 중 큰 수는 \(integer1)입니다. ")
} else if integer1 == integer2 {
    print("두 수는 같습니다. ")
} else {
    print("둘 중 큰 수는 \(integer2)입니다. ")
}*/

//조건문 예제6
/*func correctAnswer(_ subject: Array<String>) {
    var result: String = ""
    var totalAnswerCount = 0
    
    for i in 0...subject.count-1 {
        print("\(i + 1)과목 \(subject[i]): ", terminator: "")
        let answerCount: Int = Int(readLine()!)!
        totalAnswerCount += answerCount
        
        if answerCount < 8 {
            result = "불합격"
        } else if totalAnswerCount >= 60 {
            result = "합격"
        }
    }
    print(result + "입니다!")
}

let subject: Array<String> = ["소프트웨어 설계", "소프트웨어 개발", "데이터베이스 구축", "프로그래밍 언어 활용", "정보시스템 구축관리"]
correctAnswer(_ : subject)*/

//조건문 예제7



//reduce 사용하기.
/*let numberArray = [1,2,3,4,5,6,7,8,9,10]
let sum = numberArray.reduce(0, +)
print(sum)*/

//조건문 예제 12번
/*print("월 입력: ", terminator: "")
let month: Int = Int(readLine()!)!*/

/*if month == 12 || month == 1 || month == 2 {
    print("\(month)월은 겨울입니다!")
} else if 2 < month && month < 6 {
    print("\(month)월은 봄입니다!")
} else if 5 < month && month < 9 {
    print("\(month)월은 여름입니다!")
} else {
    print("\(month)월은 가을입니다!")

}*/

/*switch month
{
case 1, 2, 12:
    print("\(month)월은 겨울입니다!")
case 3...5:
    print("\(month)월은 봄입니다!")
case 6...8:
    print("\(month)월은 여름입니다!")
default:
    print("\(month)월은 가을입니다!")
}*/

/*func inputIntValue(_ message: String) -> Int? {
    print(message, terminator: "")
    guard let inputValue = readLine(), let inputValue = Int(inputValue) else {
        print("입력값이 잘못되었습니다.")
        return nil
    }
    return inputValue
}

if let month = inputIntValue("월 입력: ") {
    var season = ""
    switch month{
    case 12, 1, 2:
        season = "겨울"
    case 3...5:
        season = "봄"
    case 6...8:
        season = "여름"
    case 9...11:
        season = "겨울"
    default:
        print("입력값이 1~12를 벗어났습니다.")
        break
    }
    print("\(month)월은 \(season)입니다!")
}*/


//조건문 예제13
/*print("금액 입력: ", terminator: "")
let money: Int = Int(readLine()!)!

print("""
메뉴를 고르세요
1. 콜라(800원) 2. 생수(500원) 3.비타민워터(1500원):
""", terminator: "")
let menuNumber: Int = Int(readLine()!)!*/

/*func input(message: String) -> Int? {
    print(message, terminator: "")
    guard let inputValue = readLine(), let inputValue = Int(inputValue) else {
        print("입력값이 잘못되었습니다.")
        return nil
    }
    return inputValue
}

let money = input(message: "금액 입력: ")
print(type(of: money))*/


/*func input(message: String?) -> Int? {
    print(message ?? "", terminator: "")
    guard let inputValue = readLine() else {
        print("입력값이 잘못되었습니다.")
        return nil
    }
    guard let intValue = Int(inputValue) else {
        print("숫자를 입력하세요.")
        return nil
    }
    return intValue
}*/


//13
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

money = input(message: "금액 입력: ") ?? money
menuNumber = input(message: """
메뉴를 고르세요
1. 콜라(800원) 2. 생수(500원) 3.비타민워터(1500원):
""") ?? menuNumber

/*if menuNumber == 1 {
    print("잔돈: \(money - 800)원")
} else if menuNumber == 2 {
    print("잔돈: \(money - 500)원")
} else if menuNumber == 3 {
    print("잔돈: \(money - 1500)원")
}*/

//14
/*if menuNumber == 1 {
    if money < 800 {
        print("돈이 부족해요.")
        print("잔돈: \(money)원")
    }
} else if menuNumber == 2 {
    if money < 500 {
        print("돈이 부족해요.")
        print("잔돈: \(money)원")
    }
} else if menuNumber == 3 {
    if money < 1500 {
        print("돈이 부족해요.")
        print("잔돈: \(money)원")
    }
}*/

//15
/*if menuNumber == 1 {
    let totalMoney: Int = money - 800
    print("잔돈: \(totalMoney)원")
    print("천원: \(totalMoney / 1000)장")
} else if menuNumber == 2 {
    let totalMoney: Int = money - 500
    print("잔돈: \(totalMoney)원")
    print("천원: \(totalMoney / 1000)장")
} else if menuNumber == 3 {
    let totalMoney: Int = money - 1500
    print("잔돈: \(totalMoney)원")
    print("천원: \(totalMoney / 1000)장")
}*/

//16
/*if menuNumber == 1 {
    let totalMoney: Int = money - 800
    print("잔돈: \(totalMoney)원")
    print("천원: \(totalMoney / 1000)장, 오백원: \(totalMoney % 1000 / 500)개, 백원: \(totalMoney % 1000 % 500 / 100)ㄱ")
} else if menuNumber == 2 {
    let totalMoney: Int = money - 500
    print("잔돈: \(totalMoney)원")
    print("천원: \(totalMoney / 1000)장")
} else if menuNumber == 3 {
    let totalMoney: Int = money - 1500
    print("잔돈: \(totalMoney)원")
    print("천원: \(totalMoney / 1000)장")
}*/

/*if menuNumber == 1 {
    if money < 800 {
        print("돈이 부족해요.")
        print("잔돈: \(money)원")
    }
} else if menuNumber == 2 {
    if money < 500 {
        print("돈이 부족해요.")
        print("잔돈: \(money)원")
    }
} else if menuNumber == 3 {
    if money < 1500 {
        print("돈이 부족해요.")
        print("잔돈: \(money)원")
    }
}*/
