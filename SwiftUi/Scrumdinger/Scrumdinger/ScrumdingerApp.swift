//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 홍세희 on 2023/10/15.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
