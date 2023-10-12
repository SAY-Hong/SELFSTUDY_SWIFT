//
//  EvenOrOddView.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/12.
//

import SwiftUI

//TODO: 1. 박스들의 높이가 같도록 설정을 어케 해야할까
//TODO: 2. 버튼 색깔 커스텀으로 넣어볼까나

struct EvenOrOddView: View {
    @State private var intValue: Int?
    @State private var result: (Int, String)?
    @State var clickCheck = 0
    
    var body: some View {
        VStack {
            HStack {
                TextField("정수를 입력하세요: ", value: $intValue, format: .number)
                    .padding()
                    .border(.black)
                    .frame(minWidth: 50, maxWidth: 250, minHeight: 100, maxHeight: 100)
                Button(action: { result = checkNum() }) {
                    Text("CHECK")
                        .padding()
                        .border(Color.black)
                        .frame(minHeight: 50, maxHeight: 50)
                        
                }.buttonStyle(.borderedProminent)
            }
            if clickCheck == 1 {
                Text("\(result?.0 ?? 0)은/는 \(result?.1 ?? "")입니다.")
            } else {
                Text(" ")
            }
        }
    }
    func checkNum() -> (Int, String){
        guard let number = intValue else {
            return ( 00, "팔별 불가능")
        }
        
        clickCheck = 1
        
        if number % 2 == 0 {
            return (number, "짝수")
        } else {
            return (number, "홀수")
        }
    }
}

#Preview {
    EvenOrOddView()
}
