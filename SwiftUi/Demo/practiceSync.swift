//
//  practiceSync.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/19.
//

import SwiftUI

struct practiceSync: View {
    var body: some View {
        Button(action: {
            //동기함수에서 비동기화 함수 연동
            Task {
                await doSomething()
            }
        }, label: {
            Text("do something!")
        })
        
     }
    }
    
    
    func doSomething() async {
        // async let을 사용하여 두 개의 비동기 작업을 동시에 실행
        async let result1 = sumFrom(start: 1, end: 50)
        async let result2 = sumFrom(start: 51, end: 100)
        // 결과를 출력
        var a = await result1
        var b = await result2
        print("\(a + b)")
    }

    func sumFrom(start: Int, end: Int) async -> Int {
        var result: Int = 0
        for i in start...end {
            result += i
        }
        return result
}

#Preview {
    practiceSync()
}


