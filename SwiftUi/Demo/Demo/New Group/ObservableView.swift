//
//  ObservableView.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/13.
//

import SwiftUI
import Foundation
import Combine

class TestData: ObservableObject {
    @Published var userCount = 0
    @Published var currentUser = ""
    
    init() {
       updateData()
    }
    func updateData() {
        userCount += 1
        currentUser = "홍"
    }
}
struct ObservableView: View {
    @StateObject var testData: TestData = TestData()
    var body: some View {
        Text("\(testData.currentUser), you are user number \(testData.userCount)")
    }
}


#Preview {
    ObservableView()
}
