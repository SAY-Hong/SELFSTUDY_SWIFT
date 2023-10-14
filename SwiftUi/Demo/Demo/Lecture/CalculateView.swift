//
//  calculateView.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/11.
//

import SwiftUI

struct CalculateView: View {
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
}
