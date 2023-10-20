//
//  DetailView.swift
//  Scrumdinger
//
//  Created by 홍세희 on 2023/10/20.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    var body: some View {
        List {
            Section(header: Text("Meeting Info")) { //List 내에서 시각적으로 구분해주는 주는 Section -> 컨텐츠 내용 자르기 & 그룹화
                Label("Start Meeting", systemImage: "timer") //MARK: Label 이용하기
                    .font(.headline)
                    .foregroundColor(.accentColor)
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text("\(scrum.theme.name)")
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(4)
                }
            }
        }
    }
}

#Preview {
    NavigationStack { //MARK: NavigationStack로 굳이 감싸는 이유가..?
        DetailView(scrum: DailyScrum.sampleData[0])
    }
}
