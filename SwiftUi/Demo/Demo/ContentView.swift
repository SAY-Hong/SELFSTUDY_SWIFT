//
//  ContentView.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/10.
//

import SwiftUI

/*struct ContentView: View {
    @State private var firstnumber: String = ""
    @State private var operation: String = ""
    @State private var secondnumber: String = ""
    @State private var result = 0.0
    
    var body: some View {
        VStack {
            
            Text("✖️➕➖➗")
            Text("숫자 계산하기").font(.system(size: 30)).lineSpacing(100.0)
            
            HStack {
                TextField("첫번째 숫자를 입력: ", text: $firstnumber)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(1)
                    .background(Color.black)
                TextField("두번째 숫자를 입력: ", text: $secondnumber)
                     .textFieldStyle(RoundedBorderTextFieldStyle())
                     .padding(1)
                     .background(Color.black)
                }
            TextField("연산자를 입력하세요: ", text: $operation)
                 .textFieldStyle(RoundedBorderTextFieldStyle())
                 .padding(1)
                 .background(Color.black)
           
           /* Button("계산하기"){
                buttonPressed()
            }.padding()
             .background(Color.blue)
             .foregroundColor(.white)*/
            Button(action: buttonPressed, label: { Text("계산하기").font(.system(size: 20))})
            Text("결과: \(result)")
        }
        .padding()
    }
    
    func buttonPressed(){
        let num1 = Double(firstnumber) ?? 0
        let num2 = Double(secondnumber) ?? 0
        
        switch operation {
        case "+":  
            result = num1 + num2
        case "-":
            result = num1 - num2
        case "*":
            result = num1 * num2
        case "/":
            if num2 != 0 {
                result = num1 / num2
            } else {
                result = 0
            }
        default:
            result = 0
            
        }
    }
}*/

struct ContentView: View {
    @State private var gulCount = ""
    @State private var storageCount = ""
    @State private var result = 0
    
    var body: some View {
        VStack{
            Text("📦📦📦📦📦")
            Text("박스의 개수를 구해보자!").font(.title)
    
            HStack{
                Text("🍊").font(.system(size: 100))
                TextField("귤의 개수는?", text: $gulCount)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(1)
                    .background(Color.secondary)
                    .padding(10)
            }.onSubmit {
                getBox()
            }
            
            HStack{
                Text("📥").font(.system(size: 100))
                TextField("박스에 들어갈 수 있는 귤의 개수는?", text: $storageCount)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(1)
                    .background(Color.secondary)
                    .padding(10)
            }.onSubmit {
                getBox()
            }
            
            /*Button(action: getBox, label: {
                Text("필요한 박스의 개수는?")
                    .foregroundColor(.white)
            }).padding(10).background(Color.accentColor)*/
            
            Text("필요한 박스의 수: \(result)(Box)").font(.system(size: 20)).padding()
        }
    }
    func getBox() {
        let gul = Int(gulCount) ?? 0
        let box = Int(storageCount) ?? 0
        
        if gul % box != 0 {
            result = gul / box + 1
        } else {
            result = gul / box
        }
    }
}

#Preview {
    ContentView()
}

