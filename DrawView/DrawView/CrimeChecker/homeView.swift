//
//  homeView.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/03.
//

import SwiftUI


struct homeView: View {
    var body: some View {
        ZStack {
            Image("homeImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 30) {
                Spacer()
                VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading) {
                        Text("Stay safe while")
                        Text("exploring the city")
                    }
                    .modifier(HomeTextCustomSize(size: 45)) //커스텀 수정자 적용하기 - modifier()로 접근하기
                    VStack(alignment: .leading){
                        Text("We provide up-to-date information")
                        Text("on the safety level of your")
                        Text("destination.")
                    }
                    .modifier(HomeTextCustomSize(size: 20))
                }
                    Button(action:{}, label: {
                    Text("Let's get started")
                        .foregroundStyle(Color.white)
                        .bold()
                        .frame(width: 330)
                        .padding(20)
                        .background( // () 안에 다 때려박을 수 있네..
                            RoundedRectangle(cornerRadius: 10.0)
                                .fill(Color.orange) //MARK: fill() - 버튼 색상 바꾸기
                        )
                })
            }
        }
    }
}

#Preview {
    homeView()
}
