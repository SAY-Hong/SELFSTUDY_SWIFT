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
            Button(action: {}, label: {
                Text("Button")
                    .padding(.leading, 150)
                    .padding(.trailing, 150)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                    .foregroundStyle(Color.white)
            }).background(Color.teal)
              .cornerRadius(5.0)
            Spacer()
            Button(action: {}, label: {
                Text("Button")
                    .padding(.leading, 150)
                    .padding(.trailing, 150)
                    .foregroundStyle(Color.white)
                    .padding(.vertical, 300)
            }).background(Color.teal)
              .cornerRadius(5.0)
            Spacer()
            Button(action: {}, label: {
                Text("Button")
                    .padding(.leading, 150)
                    .padding(.trailing, 150)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                    .foregroundStyle(Color.white)
            }).background(Color.teal)
              .cornerRadius(5.0)
        }
    }
}

#Preview {
    Uiexample2()
}
