//
//  practiceSync.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/19.
//

import SwiftUI

struct practiceSync: View {
    @State private var start_num: Int = 0
    @State private var end_num: Int = 0

    enum rangeError: Error {
        case bothZero
        case biggerThanEnd
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("연산 스타트 숫자 입력: ")
                TextField("", value: $start_num, format: .number)
            }
            HStack {
                Text("연산 끝 숫자 입력: ")
                TextField("연산 끝 숫자 입력: ", value: $end_num, format: .number)
            }
        }.multilineTextAlignment(.center)
       
        
        //
        Button(action: {
            //동기함수에서 비동기화 함수 연동
            Task {
                await doSomething()
            }
        }, label: {
            Text("do something!")
        })
        
     }
    
    func doSomething() async {
        // async let을 사용하여 두 개의 비동기 작업을 동시에 실행
        async let result1 = sumFrom(start: start_num, end: end_num/2) //스레드야! 나 바쁘면 다른 스레드에 넘길거다? 그리고 다른 함수 오면 실행한다??
        async let result2 = sumFrom(start: end_num/2 + 1, end: end_num)
        // 결과를 출력
        guard let a = try? await result1 else { print("잘못된 값")
            return }//sumFrom이 실행돼서 result1을 반환할 때까지 실행 안할거야!
        guard let b = try? await result2 else {print("잘못된 값")
            return }//sumFrom이 실행돼서 result2를 반환할 때까지 실행 안할거야!
        print("\(a + b)")
    }

    func sumFrom(start: Int, end: Int) async throws-> Int {
        var result: Int = 0
        
        if start < end {
            for i in start...end {
                result += i
            }
        } else {
            throw rangeError.biggerThanEnd  //if-else의 else에도 throw를 해줄 수 있다!
        }
        return result
    }
}
    
    

#Preview {
    practiceSync()
}


