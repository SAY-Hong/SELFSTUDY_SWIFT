//
//  main.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/21.
//

import Foundation
//MARK: - 배열 예제
func solution(num1: Int, num2: Int) -> Int {
    let ddaroAB = Int("\(num1)\(num2)")!
    let subAB = 2 * num1 * num2

    if ddaroAB >= subAB {
        return ddaroAB
    } else {
        return subAB
    }
}

let result = solution(num1: 1, num2: 23)
print(result)

//예제 1
//1
var numbers: Array<Int> = []
//2
var numbers = [Int](repeating: 0, count: 10)

//3
for i in 0..<numbers.count {
    numbers[i] = Int.random(in: 1...20)
}

var total = 0
for i in 0..<numbers.count {
    print(numbers[i], terminator: " ")
    total += numbers[i]
}

//예제2
var array: [Int] = [1, 2, 3, 4, 5, 6]
array = array.filter{ $0 % 2 == 0}
print(array)

//예제3
var array: [Int] = [1, 2, 3, 4, 5, 6]
var newArray: [Int] = []

for i in 0..<array.count {
    if array[i] % 2 != 0 {
        newArray.append(array[i])
    }
}
print("array에 들어있는 홀수는 \(newArray)이며, 총 \(newArray.count)개 입니다.")

//예제4
var array: [Int] = [20, 12, 31, 4, 5, 35, 6]
array = array.sorted()
print("가장 큰 값은 \(array[array.count - 1])입니다. ")

//예제5
var array: [Int] = [20, 12, 31, 4, 5, 35, 6]

array = array.sorted() //방법1

for _ in 0..<array.count { //방법2
    for i in 0..<array.count - 1 {
        if array[i] > array[i + 1] {
            var temp = array[i]
            array[i] = array[i + 1]
            array[i + 1] = temp
         }
    }
}
print("가장 작은 값은 \(array[0])입니다. ")

//예제6
print("=== 수박 게임 시작! ===")
let numbers = input(message: "숫자를 입력해주세요: ")
var watermelon: String = ""
for i in 1...numbers {
    if i % 2 == 0 {
        watermelon += "박"
    } else {
        watermelon += "수"
    }
}
print(watermelon)

//예제7
var array = [Int](repeating: 0, count: 10)
var newArray: [Int] = []

for i in 0..<10 {
   array[i] = input(message: "\(i+1)번째 정수 입력: ")
}

for i in 0..<10 {
    if array[i] % 3 == 0 {
        newArray.append(array[i])
    }
}

print("3의 배수: \(newArray)")

//예제8
var answers = [1, 1, 4, 2, 3]
var results: String = ""
var totalScores: Int = 0

print("== 채점하기! ==")
print("답을 입력하세요")

for i in 0..<5 {
    if answers[i] == input(message: "\(i + 1)번 답: ") {
        results += "O "
        totalScores += 5
    } else {
        results += "X "
    }
}

print(results, "총점: ", totalScores)

//array 예제9
func draxIndexStars() {
    var arrayName = [Int](repeating: 0, count: Int.random(in: 1...10))
    print("\(arrayName.count):", (String)(repeating: "*", count: arrayName.count))
}

draxIndexStars()
draxIndexStars()
draxIndexStars()
draxIndexStars()
