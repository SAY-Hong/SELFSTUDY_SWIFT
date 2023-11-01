//
//  ListExample5View.swift
//  Demo
//
//  Created by 홍세희 on 2023/11/01.
//

import SwiftUI

struct ListExample5View: View {
    @State var items = Array(1...10)
    var body: some View {
        List {
            ForEach(items, id: \.self ) { item in
                HStack {
                    Text("item \(item)")
                    Spacer()
                    Button(action: {
                        if let index = items.firstIndex(of: item) {
                            items.remove(at: index)
                        }
                    }, label: {
                        Image(systemName: "trash")
                    })
                }
            }
            
        }
    }
}

#Preview {
    ListExample5View()
}
