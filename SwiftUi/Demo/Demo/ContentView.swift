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

/*struct ContentView: View {
    @State private var gulCount = ""
    @State private var storageCount = ""
    @State private var result: Int?
    
    var body: some View {
        VStack{
            Text("📦📦📦📦📦")
            Text("박스의 개수를 구해보자!").font(.title)
        
            HStack{
                Text("🍊").font(.system(size: 100))
                TextField("귤의 개수는?", text: $gulCount)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onChange(of: gulCount) { oldValue, newValue in
                        result = getBox(newValue, storageCount)
                    }
                    .padding(1)
                    .background(Color.secondary)
                    .padding(10)
            }
            
            HStack{
                Text("📥").font(.system(size: 100))
                TextField("박스에 들어갈 수 있는 귤의 개수는?", text: $storageCount)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onChange(of: storageCount) { oldValue, newValue in
                        result = getBox(gulCount, newValue)
                    }
                    .padding(1)
                    .background(Color.secondary)
                    .padding(10)
            }
            
            /*Button(action: getBox, label: {
                Text("필요한 박스의 개수는?")
                    .foregroundColor(.white)
            }).padding(10).background(Color.accentColor)*/
            
            Text("필요한 박스의 수: \(result ?? 0)(Box)")
                .font(.system(size: 20))
                .padding()
        }
        
    }
    func getBox(_ count: String, _ boxCount: String) -> (Int) {
        let gul = Int(gulCount) ?? 0
        let box = Int(storageCount) ?? 0
        
        if gul % box != 0 && box != 0 {
            //result = gul / box + 1
            return (gul / box + 1)
        }
        if gul % box == 0 && box != 0 {
            //result = gul / box
            return (gul / box)
        }
        
        if box == 0 {
            return 0
        }
        return 0
    }
}*/

struct ContentView: View {
    @State private var swiftScore: Int?
    @State private var iosScore: Int?
    @State private var webScore: Int?
    @State private var results: (Int, Double)?
    
    var body: some View {
        VStack{
            Text("📖").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("제1회 역량평가 결과 알아보기").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
            HStack{
                Text("✍️제1과목: ").font(.system(size: 20)).bold()
                TextField("Swift 점수 입력: ", value: $swiftScore, format: .number)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            HStack{
                Text("✍️제2과목: ").font(.system(size: 20)).bold()
                TextField("IOS 점수 입력: ", value: $iosScore, format: .number)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            HStack{
                Text("✍️제3과목: ").font(.system(size: 20)).bold()
                TextField("Web 점수 입력: ", value: $webScore, format: .number)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Button(action: { results = checkScore() } , label: {
                Text("나의 시험 결과 확인하기")
            }).padding()
            
            Text("점수 합계: \(results?.0 ?? 0)")
            Text("점수 평균: \(results?.1 ?? 0)")
            
        }

    }
    func checkScore() -> (Int, Double) {
        guard let swiftScore = swiftScore, let iosScore = iosScore, let webScore = webScore else {
            return (0, 0.0)
        }
        return (swiftScore + iosScore + webScore, Double(swiftScore + iosScore + webScore)/3)
    }
}

#Preview {
    ContentView()
}

