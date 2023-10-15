//
//  ContentView.swift
//  Scrumdinger
//
//  Created by 홍세희 on 2023/10/15.
//

import SwiftUI

struct ContentView: View {
    @State private var progressCount: Double = 1.0
    @State private var flag = false
    @State private var content = ""
    var body: some View {
        NavigationStack {
            ProgressView(value: progressCount, total: 5).offset(y: -300)
            Text("\(content)")
            Button(action: {changePage()}, label: {
                Text("다음")
            }).buttonStyle(.borderedProminent)
              .offset(x: -150, y: 300)
              .navigationDestination(isPresented: $flag) {
                  page1View()
              }
        }
    }
    
    func changePage() {
        progressCount += 1.0
        switch(progressCount) {
        case 2.0 :
            content = "페이지 2"
        case 3.0 :
            content = "페이지 3"
        case 4.0 :
            content = "페이지 4"
        case 5.0 :
            content = "페이지 5"
        default: content = "페이지 1"
        }
        if progressCount == 6.0 {
            flag = true
            progressCount = 1.0
        }
    }
}

#Preview {
    ContentView()
}
