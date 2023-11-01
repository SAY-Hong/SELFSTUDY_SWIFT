//
//  ListExample3View.swift
//  Demo
//
//  Created by 홍세희 on 2023/11/01.
//

import SwiftUI

struct ListExample3View: View {
    @State private var selectedItem = -1
    var body: some View {
        NavigationStack{
            List {
                ForEach(0..<10) { index in
                    HStack {
                        Text("Item \(index + 1)")
                        Spacer()
                        if selectedItem == index {
                            Image(systemName: "checkmark")
                        }
                    }
                    .onTapGesture {
                        selectedItem = index
                    }
                }
            }
            .navigationTitle("SwiftUI List Quiz")
        }
    }
}

#Preview {
    ListExample3View()
}
