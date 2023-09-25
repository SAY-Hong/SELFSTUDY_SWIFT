//
//  main.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/21.
//

import Foundation

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

// MARK: - for 예제 함수 사용버전
func isClapNumber(_ number: Int) -> Bool {
    let digits = String(number).compactMap { Int(String($0)) } //문자열의 각 자릿수를 정수 배열로 반환
    return digits.contains(3) || digits.contains(6) || digits.contains(9)
    
}
for number in 0...99 {
    if isClapNumber(number) {
        let clapCount = String(number).filter { $0 == "3" || $0 == "6" || $0 == "9"}.count //필터링 조건에 맞는 문자열 개수 받기
        let clapString = String(repeating: "*", count: clapCount)
        print("\(number)\(clapString)")
    } else {
        print(number)
    }
}

