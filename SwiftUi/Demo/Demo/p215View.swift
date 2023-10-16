//
//  p215View.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/16.
//

import SwiftUI

struct p215View: View {
    //회전값을 저장하게 될 상태 프로퍼티
    @State private var rotation: Double = 0.0
    
    //사용자가 입력하는 메소드가 저장된 상태 프로퍼티
    @State private var text: String = "Hello World!"
    
    var colors: [Color] = [.black, .red, .green, .blue]
    var colornames = ["Black", "Red", "Green", "Blue"]
    
    @State private var colorIndex = 0
    
    var body: some View {
        VStack {
            Spacer()
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .rotationEffect(.degrees(rotation))
                .animation(Animation.easeInOut(duration: 2), value: rotation) //3초 이내로 시간을 주면 속도감이 있다.
                .foregroundColor(colors[colorIndex])
            
            Spacer()
            Divider()
            Slider(value: $rotation, in: 0...300, step: 0.1)
            TextField("Enter text here", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Picker(selection: $colorIndex, label: Text("Picker")) {
                ForEach (0..<colornames.count, id: \.self) { color in
                    Text(colornames[color])
                        .foregroundColor(colors[color])
                }
            }.pickerStyle(.wheel)
        }
        .padding()
        .background(Color.teal)
    }
}

#Preview {
    p215View()
}
