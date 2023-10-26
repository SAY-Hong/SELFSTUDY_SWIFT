//
//  StorageSecondView.swift
//  StorageExampleApp
//
//  Created by 홍세희 on 2023/10/26.
//

import SwiftUI

struct StorageSecondView: View {
    @ObservedObject var whatColor: ChoiceColor //데이터를 처음 쓰는 첫번째 뷰에서만 StateObject를 쓰고 그 데이터를 다시 받기 위해서는 ObservedObject..
    @Binding var index: Int //값을 가지는게 아니라 밖에 있는 값이랑 연결하는거. 변수랑 공유 받음
    
    var body: some View {
        ZStack {
            Color(whatColor.colors[index]).ignoresSafeArea()
            Text("선택한 배경화면 색상을 보여주는 화면입니다. ")
        }
    }
}

//#Preview {
//    StorageSecondView(whatColor: choiceColor())
//}
