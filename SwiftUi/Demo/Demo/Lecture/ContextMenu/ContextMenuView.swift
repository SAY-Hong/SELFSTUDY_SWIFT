//
//  ContextMenuView.swift
//  Demo
//
//  Created by 홍세희 on 2023/11/09.
//

import SwiftUI

struct ContextMenuView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .contextMenu {
                Button("C1") {
                    
                }
            }
    }
}

#Preview {
    ContextMenuView()
}
