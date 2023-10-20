//
//  UIeample1.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/16.
//

import SwiftUI

struct UIexample1: View {
    @State private var count = 0
    
    var body: some View {
        VStack {
            Spacer()
            Text("\(count)")
        Spacer()
            Button(action: { plusCount() }, label: {
                Text("Count")
                    .padding(.leading, 150)
                    .padding(.trailing, 150)
            })
              .buttonStyle(.borderedProminent)
              .tint(.purple)
        }
    }
    func plusCount() {
        count += 1
    }
}

#Preview {
    UIexample1()
}
