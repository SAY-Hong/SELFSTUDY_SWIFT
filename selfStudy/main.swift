//
//  main.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/21.
//

import Foundation

// MARK: - 재귀호출로 삼육구 함수 작성하기
func is369(cnt: Int) -> String {
    let a = cnt / 10
    let b = cnt % 10
    let str: String = (b % 3 == 0) && (b != 0) ? "*" : ""
    if a == 0 { //일의 자리일 경우 최종 문자열만 리턴!
        return str
    }
    return str + is369(cnt: a)
}

for cnt in 100...200 {
    print(String(cnt), is369(cnt: cnt))
}
