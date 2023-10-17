//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by 홍세희 on 2023/10/16.
//

import Foundation

struct DailyScrum: Identifiable {
    var id: UUID //객체가 고유하고 같지 않음을 보장해주는 역할! -> 랜덤하게 긴 문자열을 만들어준다.. 생각하기
    
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    static var sampleData: [DailyScrum] {
        [
            DailyScrum(title: "Design", attendees: ["Cathy", "Dasiy", "Simon", "John"], lengthInMinutes: 10, theme: .yellow),
            DailyScrum(title: "App Dev", attendees: ["Katis", "Gray", "Luis", "Darla", "Euna"], lengthInMinutes: 5, theme: .orange),
            DailyScrum(title: "Web Dev", attendees: ["Chella", "Chirs", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Ched", "Jenn", "Sarah"], lengthInMinutes: 5, theme: .poppy)
            
        ]
    }
}


