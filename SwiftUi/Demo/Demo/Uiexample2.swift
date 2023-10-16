//
//  Uiexample2.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/16.
//

import SwiftUI

struct Uiexample2: View {
    var body: some View {
        VStack {
            /*Button(action: {}, label: {
                Text("Button")
                    .padding(.leading, 150)
                    .padding(.trailing, 150)
            }).buttonStyle(.borderedProminent).tint(.teal)*/
            VStack {
                Button(action: {}, label: {
                    Text("Button")
                        .frame(width: 350, height: 30)
                }).background(Color.teal)
                    .cornerRadius(5.0)
                Spacer()
                Button(action: {}, label: {
                    Text("Button")
                        .frame(width: 350, height: 600)
                }).background(Color.teal)
                    .cornerRadius(5.0)
                Spacer()
                Button(action: {}, label: {
                    Text("Button")
                        .frame(width: 350, height: 30)
                }).background(Color.teal)
                    .cornerRadius(5.0)
            }
        }
    }
}

#Preview {
    Uiexample2()
}
