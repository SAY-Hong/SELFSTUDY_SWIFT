//
//  scoreView.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/11.
//

import SwiftUI

struct ScoreView: View {
    @State private var swiftScore: Int?
    @State private var iosScore: Int?
    @State private var webScore: Int?
    @State private var results: (Int, Double)?
    
    var body: some View {
        VStack{
            Text("📖").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("제1회 역량평가 결과 알아보기").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
            HStack{
                Text("✍️제1과목: ").font(.system(size: 20)).bold()
                TextField("Swift 점수 입력: ", value: $swiftScore, format: .number)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            HStack{
                Text("✍️제2과목: ").font(.system(size: 20)).bold()
                TextField("IOS 점수 입력: ", value: $iosScore, format: .number)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            HStack{
                Text("✍️제3과목: ").font(.system(size: 20)).bold()
                TextField("Web 점수 입력: ", value: $webScore, format: .number)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Button(action: { results = checkScore() } , label: {
                Text("나의 시험 결과 확인하기")
            }).padding()
            
            Text("점수 합계: \(results?.0 ?? 0)")
            Text("점수 평균: \(results?.1 ?? 0)")
            
        }

    }
    func checkScore() -> (Int, Double) {
        guard let swiftScore = swiftScore, let iosScore = iosScore, let webScore = webScore else {
            return (0, 0.0)
        }
        return (swiftScore + iosScore + webScore, Double(swiftScore + iosScore + webScore)/3)
    }
}
