//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by 홍세희 on 2023/10/17.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List(scrums) { scrum in //title프로퍼티 -> 각 아이템을 구별하는 고유 id로 쓰기.
            CardView(scrum: scrum) //카드뷰 초기화하가
                .listRowBackground(scrum.theme.mainColor) //listRowBackground로 고유 색깔 지정해주기.
        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData) //scrum의 array와 ScrumsView를 초기화하기 -> 안하면 오류난다.
}
