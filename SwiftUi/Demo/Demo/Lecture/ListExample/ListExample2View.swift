//
//  ListExample2View.swift
//  Demo
//
//  Created by 홍세희 on 2023/11/01.
//

import SwiftUI

struct ListExample2View: View {
    var body: some View {
        List {
            ForEach(0..<5) { num in
                Section(header: Text("Section\(num + 1)").foregroundStyle(Color.black)) {
                    Text("Row1")
                        .foregroundStyle(Color.blue)
                    Text("Row2")
                        .foregroundStyle(Color.blue)
                    Text("Row3")
                        .foregroundStyle(Color.blue)
                }
            }
        }
        .scrollContentBackground(.hidden)
        .background(Color.gray)
    }
}

#Preview {
    ListExample2View()
}
