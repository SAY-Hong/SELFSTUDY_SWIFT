//
//  practiceSync.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/20.
//

import SwiftUI
struct practiceAsync2: View {
    @State private var result = 0
    var body: some View {
        Button(action: {
            Task {
                //result = await asyncFunction() //MARK: 비동기 3번
                //await asyncPrintSum(2, 5) //MARK: 비동기 4번
                //await printUser(id: 2) //MARK: 비동기 5번
               //await asyncPrintSum()
            }
        }, label: {
            Text("do something!")
        })
        
        //Text("\(result)") //MARK: 비동기 3번
        
    }
    //MARK: 비동기 3번
//    func asyncFunction() async -> Int {
//        let random = Int.random(in: 1...10)
//        return random
//    }
    
    //MARK: 비동기 4번
//    func asyncAdd(_ x: Int, _ y: Int) async -> Int {
//        return x + y
//    }
//
//    func asyncPrintSum(_ a: Int, _ b: Int) async { //async를 써주지 않으면 에러 -> 비동기함수인 asyncAdd를 써야하기에 이 함수도 비동기적인 작업을 거친다고 작성하기.
//        let sum = await asyncAdd(a, b)
//        print(sum)
//    }
    
    //MARK: 비동기 5번
//    func fetchUser(id: Int) async -> String {
//        // some network request
//        return "User \(id)"
//    }
//
//    func printUser(id: Int) async {
//        let user = await fetchUser(id: id)
//        print(user)
//    }
    
    //MARK: 비동기 6번
    func asyncDouble(_ x: Int) async -> Int {
        return x * 2
    }

//    func syncDouble(_ x: Int) async -> Int {
//        return await asyncDouble(x)
//    
//    }
    
    func syncDouble(_ x: Int) async {
        Task.detached { print(await asyncDouble(x)) }
    }
    //MARK: 비동기 7번
//    func asyncAdd(_ x: Int, _ y: Int) async -> Int {
//        return x + y
//    }
//
//    func asyncPrintSum() async {
//        /*async let a = asyncAdd(10, 20)
//        async let b =  asyncAdd(30, 40)
//        
//        var result1 = await a
//        var result2 = await b
//        
//        print(result1 + result2)*/
//        
//        let a = await asyncAdd(10, 20)
//        let b = await asyncAdd(30, 40)
//        print(a + b)
//    }
}

#Preview {
    practiceAsync2()
}
