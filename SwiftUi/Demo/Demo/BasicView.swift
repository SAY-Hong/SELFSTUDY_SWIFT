//
//  BasicView.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/11.
//

import SwiftUI

struct BasicView: View {
    @ObservedObject var num = NumberOnly()
    
    @State private var msg = ""
    @State private var score: Int = 0
    
    //프로퍼티로서의 뷰
    let carStack = HStack {
        Text("Car Image")
            .font(.headline)
            .foregroundColor(.red)
        Image(systemName: "car.fill")
    }
    
    var body: some View {
        VStack {
            carStack //프로퍼티 뷰
            Image(systemName: "pencil.and.scribble")
                .resizable()
                .aspectRatio(contentMode: .fit) //이미지 비율 맞추면서 크게 맞춰주는 기능
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            Text("Hello world!")
                .foregroundColor(.white)
                .padding()
                .border(Color.white)
            
            //커스텀 수정자 적용
            Text("\(msg)")
                .modifier(StandardTitle())
            
            
            //MARK: 숫자 강제 적용해보기
            //시뮬레이터 ios 17.0 버전에서는 실행이 안돼.. 버전 바꿔서 돌려보기
            HStack {
                TextField("Score", value: $score, format: .number)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad) //숫자만 강제적으로 입력받게 하는..?
                TextField("Number", text: $num.value)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
            }

            HStack {
                TextField("Input", text: $msg)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.black)
                Button(action: { btnPressed() }, label: {
                    Text("Send")
                        .foregroundColor(Color.white)
                })
            }
            MyStackView()
                .font(.custom("Copperplate", size: 40))
            
            
            //MARK: 커스텀 컨테이너뷰
            MyVStackView {
                Text("Hello")
                Text("world")
                    .font(.headline) //수정도 가능하다.
            }
            
            //MARK: 레이블 뷰, 아이콘과 텍스트가 나란히 배치
            Label("Welcome", systemImage: "person.circle") //대부분 그냥 아이콘 사용하긴 해
                .font(.largeTitle)
            Label(
                title: { Text("Label") },
                icon: { Circle()
                        .fill()
                        .frame(width: 25, height: 25)
                }
            )
            
        }
        .padding()
        .background(Color.teal)
    }
    func btnPressed() {
           msg = "hahaha"
       }
}

//MARK: 하위뷰로 작성하기 - 간단하게 구조를 만들고 싶다! 일때..
struct MyStackView: View {
    var body: some View {
        HStack {
            Text("name")
            Text("age")
        }
    }
}

//MARK: 커스텀 수정자(공통된 수정사항 모아두기!)
//content -> HStack 같은 애들!
struct StandardTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(Color.white)
            .border(Color.gray, width: 0.2)
            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
    }
}

//MARK: 커스텀 컨테이너 뷰. ViewBuilder 속성을 사용한다.
//제너릭 타입 사용!
struct MyVStackView<Content: View>: View {
    let content: () -> Content
    init(@ViewBuilder content: @escaping () -> Content ) {
        self.content = content //외부에서 입력 받도록 하는 것!
    }
    var body: some View {
        VStack(spacing: 10) {
            content()
        }
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
    }
}

//MARK: 숫자만 강제하는 ObservableObject
class NumberOnly: ObservableObject {
    @Published var value = "" {
        didSet {
            let filtered = value.filter{ $0.isNumber }
            if value != filtered {
                value = filtered
            }
        }
    }
}
#Preview {
    BasicView()
}
