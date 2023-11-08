//
//  OutLinegroupView.swift
//  Demo
//
//  Created by 홍세희 on 2023/11/08.
//

//계층적 데이터를 표현.
//계층적 데이터 구조 -> 트리 구조. 트리구조와 유사하게 만들어져있다.
//TODO: 여기 뷰 스필릿뷰로 바꿔보고 싶다!
import SwiftUI

//샘플 데이터 구조 p.355
struct CarInfo: Identifiable {
    var id = UUID() //인스턴스 고유 식별자
    var name: String //차량타입, 제조사, 모델 이름 등
    var image: String //표시된 상품 이미지
    var children: [CarInfo]? //계층형 구조를 위한...
    
}

let carItems: [CarInfo] = [
    
    CarInfo(name: "Hybrid Cars", image: "leaf.fill", children: [
        CarInfo(name: "Toyota", image: "car.circle", children : [
            CarInfo(name: "Prius", image: "leaf.fill"),
            CarInfo(name: "Highlander Hybrid", image: "leaf.fill"),
            CarInfo(name: "Lexus", image: "car.circle", children: [
                CarInfo(name: "Lexus RX", image: "leaf.fill"),
                CarInfo(name: "Lexus NX", image: "leaf.fill")])
        ]),
        CarInfo(name: "Ford", image: "car.circle", children : [
            CarInfo(name: "Fusion Energi", image: "leaf.fill"),
            CarInfo(name: "Escape", image: "leaf.fill"),
            CarInfo(name: "Volvo", image: "car.circle", children: [
                CarInfo(name: "S90 Hybrid", image: "leaf.fill"),
                CarInfo(name: "XC90 Hybrid", image: "leaf.fill")])
        ]),
    ]),
    
    CarInfo(name: "Electric Cars", image: "bolt.car.fill", children: [
        CarInfo(name: "Tesla", image: "car.circle", children : [
            CarInfo(name: "Model 3", image: "bolt.car.fill")
        ]),
        CarInfo(name: "Karma", image: "car.circle", children : [
            CarInfo(name: "Revero GT", image: "bolt.car.fill")
        ])
    ])
]

struct OutLinegroupView: View {
    var body: some View {
        List {
            ForEach(carItems) { carItem in
                Section(header: Text(carItem.name)) {
                    //데이터를 화면에 표현하는 것에 더 큰 제어 기능을 제공한다.
                    //selection으로 구분하여 표시한다.
                    //List 뷰에 포함하면 시각적으로 더 만족스러움이 가능하다.
                    //MARK: ?왜.. 이렇게..
                    OutlineGroup(carItem.children ?? [CarInfo](), children: \.children) { child in
                        HStack {
                            Image(systemName: child.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                                .foregroundStyle(.green)
                            Text(child.name)
                                .font(.headline)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    OutLinegroupView()
}
