//
//  MoneyView.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/11.
//

import SwiftUI

struct MoneyView: View {
    enum Money {
        case zero
        case much
    }
    
    @State private var moneyState: Money = .zero
    @State private var hour: Int?
    @State private var result: Int?
    @State private var roofi = ""
    
    
    var body: some View {
        Text("💰급여 계산하기💰")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        
        VStack {
            switch moneyState {
            case .zero:
                Image("poor")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    .clipShape(Circle())
            case .much:
                Image("money")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    .clipShape(Circle())
            }
        }
        
        HStack {
            TextField("근무시간 입력하기: ", value: $hour, format: .number)
                .font(.system(size: 20))
                .multilineTextAlignment(.center)
            
            Button(action: getTotalMoney, label: {
                Text("급여 확인하기")
            })
        }.padding(50)
        
        Text("나의 총 급여는 \(result ?? 0)원 입니다. ")
        Text("\(roofi)")
            .foregroundStyle(Color.indigo)
        
    }
    
    func getTotalMoney() {
        guard let hour = hour else {
            return
        }
        
        let money = 10000
        
        if hour > 8 {
            let plusMoney: Double = Double(money) * 1.5
            let totalMoney = (hour - 8) * Int(plusMoney) + 8 * money
            result = totalMoney
        } else {
            result = hour * 10000
        }
        
        if result == 0 {
            moneyState = .zero
            roofi = "돈 안벌고 뭐하니"
        } else {
            moneyState = .much
            roofi = "좋아!"
        }
    }
}

#Preview {
    MoneyView()
}
