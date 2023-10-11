//
//  test.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/11.
//

import SwiftUI

struct ContenView: View {
    @State var showDetail = false

    var body: some View {
        ZStack {
            if showDetail {
                DetailView(showDetail: self.$showDetail)
            } else {
                VStack {
                    Button(action: {
                        self.showDetail = true
                    }) {
                        Text("Show Detail View")
                    }
                }
            }
        }
    }
}

struct DetailView: View {
    @Binding var showDetail: Bool

    var body: some View {
        VStack {
            Text("This is the Detail View")
            Button(action: {
                self.showDetail = false
            }) {
                Text("Dismiss")
            }
        }
    }
}

#Preview {
    ContenView()
}
