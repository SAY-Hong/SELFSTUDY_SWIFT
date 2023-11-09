//
//  TabViewDemoView.swift
//  Demo
//
//  Created by 홍세희 on 2023/11/09.
//
//탭바를 레이아웃 하단에 표시

import SwiftUI

struct TabViewDemoView: View {
    var body: some View {
        TabView {
            Text("First Content View")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Screen one")
                }
            Text("Second Content View")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Screen one")
                }
            Text("Third Content View")
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Screen one")
                }
        }
        .font(.largeTitle)
        //.tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    TabViewDemoView()
}
