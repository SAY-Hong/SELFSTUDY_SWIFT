//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by 홍세희 on 2023/10/16.
//

import Foundation

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
}

//귀찮다
extension DailyScrum {
    static let sampleData: [DailyScrum] = 
    [
        DailyScrum(title: "Design", attendees: ["Cathy", "Dasiy", "Simon", "John"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Katis", "Gray", "Luis", "Darla", "Euna"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chirs", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Ched", "Jenn", "Sarah"], lengthInMinutes: 5, theme: .poppy)
        
    ]
}


