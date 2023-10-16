//
//  UIeample1.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/16.
//

import SwiftUI

struct UIeample1: View {
    @State private var count = 0
    
    var body: some View {
        Text("\(count)")
        Button(action: { plusCount() }, label: {
            Text("Count")
                .padding(.leading, 150)
                .padding(.trailing, 150)
        }).offset(y: 300)
          .buttonStyle(.borderedProminent)
          .tint(.purple)
    }
    func plusCount() {
        count += 1
    }
}

#Preview {
    UIeample1()
}
