//
//  ListExample4View.swift
//  Demo
//
//  Created by 홍세희 on 2023/11/01.
//

import SwiftUI

struct CheckItem: Identifiable {
    let id = UUID()
    var title: String
    var completed: Bool
}

struct ListExample4View: View {
    // 여기에 코드를 작성하세요.
    @State var checkItems: [CheckItem] = [
        CheckItem(title: "Item1", completed: false),
        CheckItem(title: "Item2", completed: false),
        CheckItem(title: "Item3", completed: false),
        CheckItem(title: "Item4", completed: false),
        CheckItem(title: "Item5", completed: false)
    ]
    
    //@State private var istoggleOn = true
    var body: some View {
        Text("SwiftUI List Quiz")
            .font(.largeTitle)
            .padding()
        List(0..<5) { item in
            HStack {
                if checkItems[item].completed {
                    Text(checkItems[item].title)
                        .bold()
                } else {
                    Text(checkItems[item].title)
                }
                Toggle("", isOn: $checkItems[item].completed)
            }
        }
    }
}

#Preview {
    ListExample4View()
}
