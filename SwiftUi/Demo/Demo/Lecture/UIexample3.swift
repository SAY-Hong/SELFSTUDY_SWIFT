//
//  UIexample3.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/16.
//

import SwiftUI

struct UIexample3: View {
    @State private var text = ""
    var body: some View {
        VStack {
            Image("poor")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity)
                .cornerRadius(10)
            HStack {
                Button("Home") {
                    
                }
                .padding(5)
                .foregroundStyle(Color.white)
                .background(Color.indigo)
                Spacer()
                Button("back") {
                    
                }
                .padding(5)
                .foregroundStyle(Color.white)
                .background(Color.indigo)
            }
            Spacer()
            HStack {
                TextField("Hello World!", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                //Button
            }
           
        }
        .background(Color.teal)
        
    }
}

#Preview {
    UIexample3()
}
