//
//  test.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/11.
//

import SwiftUI

struct TestView: View {
    @ObservedObject var demoData: DemoData = DemoData()
    
    // @State 프로퍼티 래퍼 이용
    @State private var wifiEnabled = true
    @State private var userName = ""

    let speedsetting = SpeedSetting()
    //상위 뷰에서 Ober
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack {
            VStack {
                SpeedControlView()
                //SpeedDis
            }
            Text("Hello, world!")
            Text("\(demoData.currentUser), you \(demoData.userCount)")
            // 프로퍼티 이름 앞 '$' : 상태 프로퍼티와 바인딩(연결)
            Toggle(isOn: $wifiEnabled, label: {
            })
            TextField("Enter user name", text: $userName)

            // 상태 프로퍼티에 할당된 값을 참조할 때는 '$' 없이 사용
            Text( userName )
            Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
        }
    }
}

struct wifiImageView: View {
    @Binding var wifiEnabled: Bool
    var body: some View {
        Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
    }
}

//Observable
//여러 다른 뷰들이 외부에서 접슨할 수 있는 지속적인 데이터 표현을 위해 사용한다.
class DemoData: ObservableObject {
    @Published var userCount = 0
    @Published var currentUser = ""
    
    init() {
        updateData()
    }
    
    func updateData() {
        //데이터를 최신 상태로 유지하기 위한 코드
    }
}

//MARK: Environment
//스유 환경이 지정되어 뷰에서 뷰로 전달할 필요없이 모든 자식 뷰가 접근할 수 있다.
//@EnvironmentObject 프로퍼티 래퍼를 사용해서 구독
//작업을 수행하는 뷰의 상위 뷰에서 Observable 객체의 인스턴스 초기화

class SpeedSetting: ObservableObject {
    //published -> 남들도 사용할 수 있도록 선언하겠다. 라는 그런 의미!
    @Published var speed = 0.0
}

struct SpeedControlView: View {
    @EnvironmentObject var speedsetting: SpeedSetting
    var body: some View {
        Text("Speed = value: \(speedsetting.speed)")
    }
}
#Preview {
    TestView()
}
