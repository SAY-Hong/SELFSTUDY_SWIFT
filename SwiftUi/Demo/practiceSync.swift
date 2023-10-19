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
        async let result1 = sumFrom(start: 1, end: 50) //스레드야! 나 바쁘면 다른 스레드에 넘길거다? 그리고 다른 함수 오면 실행한다?? 
        async let result2 = sumFrom(start: 51, end: 100)
        // 결과를 출력
        var a = await result1 //sumFrom이 실행돼서 result1을 반환할 때까지 실행 안할거야!
        var b = await result2 //sumFrom이 실행돼서 result2를 반환할 때까지 실행 안할거야!
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


