//
//  ListExample1View.swift
//  Demo
//
//  Created by 홍세희 on 2023/11/01.
//

import SwiftUI

struct ListExample1View: View {
    var body: some View {
        List {
            ForEach(0..<10) { num in
                Text("Item\(num + 1)")
                    .foregroundStyle(Color.blue)
            }
        }
        .scrollContentBackground(.hidden) //List의 표준 배경을 숨긴다.
        .background(.red) //배경색 설정하기
    }
}

#Preview {
    ListExample1View()
}
