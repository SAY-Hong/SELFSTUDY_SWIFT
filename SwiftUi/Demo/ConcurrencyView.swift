//
//  withTaskGroup.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/19.
//

import SwiftUI

struct ConcurrencyView: View {
    var body: some View {
        Button(action: {
            Task {
                await print(doSomething())
            }
        }, label: {
            Text("Do Something")
        })
    }

    func doSomething() async -> Int {
        var total = 0
        var indexList = [1, 50]
        await withTaskGroup(of: Int.self) { [indexList] group in //'[indexList]': 캡처리스트 -> 교착상태 예방
            for i in 0..<indexList.count {
                group.addTask {
                   return await sumFrom(indexList[i] + 1, indexList[i] + 50) //숨어있던 return의 존재
                }
            }
            var totalSum: [Int] = []
            
            for await total in group {
                totalSum.append(total)
            }
            total = totalSum.reduce(0, +)
        }
        return total
    }

    func sumFrom(_ s: Int, _ e: Int) async -> Int {
        var sum = 0
        for i in s...e {
            sum += i
        }
        return sum
    }
}

#Preview {
    ConcurrencyView()
}
