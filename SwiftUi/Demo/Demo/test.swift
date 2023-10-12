//
//  test.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/11.
//

import SwiftUI

struct TestView: View {
    var body: some View {
        //뷰들을 담고 있는 컨테이너의 크기에 따라 저장
        //
        GeometryReader { geometry in
            VStack {
                Text("GeometryReader")
                    .font(.largeTitle)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .frame(width: geometry.size.width / 2, height: (geometry.size.height / 4) * 3)
                
                Text("Goodbye world...")
                    .font(.largeTitle)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                    .frame(width: geometry.size.width / 3, height: (geometry.size.height / 4))
            }
        }
    }
}

#Preview {
    TestView()
}
