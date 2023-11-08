//
//  NavigationSplitView.swift
//  Demo
//
//  Created by 홍세희 on 2023/11/08.
//
//NavigationSpiltView
//와이드 디스플레이에서 멀티컬러 기반의 네비게이션을 제공한다.

import SwiftUI

struct NavigationSplitDemoView: View {
    @State var colors = ["Red", "Green", "Blue"]
    @State private var selectedColor: String?
    var body: some View {
        NavigationSplitView {
            List(colors, id: \.self, selection: $selectedColor) { color in
                Text(color)
            }
        } detail: {
            
        }
    }
}

#Preview {
    NavigationSplitDemoView()
}
