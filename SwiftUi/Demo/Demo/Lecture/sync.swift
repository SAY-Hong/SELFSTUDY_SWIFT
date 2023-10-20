//
//  sync.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/19.
//

import SwiftUI

struct sync: View {
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
    //어사인 엣
//        func doSomething() async {
//            print("Start \(Date())")
//            async let result = takeTooLong()
//            print("End \(await Date())")
//
//        }
//    
//        func takeTooLong() async -> Date {
//              sleep(5)
//              return Date()
//           }

    //비동기 함수
    func doSomething() async {
        print("Start \(Date())")
        await takeTooLong()
        print("End \(Date())")
    
    }
    
    func takeTooLong() async {
           sleep(5)
           print("Async task completed at \(Date())")
   }
    //동기 코드 코드
//    func doSomething() {
//        print("Start \(Date())")
//        takeTooLong()
//        print("End \(Date())")
//
//    }
//    func takeTooLong() {
//        sleep(5)
//        print("Async task completed at \(Date())")
//    }
}

#Preview {
    sync()
}
