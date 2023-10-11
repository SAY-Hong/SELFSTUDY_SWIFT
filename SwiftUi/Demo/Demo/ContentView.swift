//
//  ContentView.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/10.
//

import SwiftUI

//MARK: 뷰 이동하기
struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List {
                NavigationLink(destination: BasicView()) {
                        Text("수업 끄적이기")
                 }
                NavigationLink(destination: MoneyView()) {
                        Text("급여 계산하기")
                 }
                NavigationLink(destination: GulBoxView()) {
                        Text("귤 박스 수 계산하기")
                 }
                NavigationLink(destination: CalculateView()) {
                        Text("계산기 만들기")
                 }
                NavigationLink(destination: ScoreView()) {
                        Text("역량 시험 점수 확인하기")
                 }
                
            }.navigationTitle("Say's Log")
        }
    }
}

#Preview {
    ContentView()
}
