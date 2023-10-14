//
//  StateBindingView.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/14.
//

import SwiftUI

struct StateBindingView: View {
    @State private var wifiEnabled = true
    @State private var userName = ""
    var body: some View {
        VStack {
            Toggle(isOn: $wifiEnabled, label: {
                Text("Enable WI-FI")
            })
        }
        TextField("Enter user name", text: $userName)
        //Text("\(userName)")
        Text(userName)
        Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
        
        //WifiImageView(wifiEnabled: $wifiEnabled)
    }
}

//MARK: State 바인딩
/*struct WifiImageView: View {
    @Binding var wifiEnabled: Bool
    var body: some View {
        Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
    }
}*/

#Preview {
    StateBindingView()
}
