//
//  SwiftUIView.swift
//  Scrumdinger
//
//  Created by 홍세희 on 2023/10/16.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack{
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapse")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.filled")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.filled")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("대충 의미 있는 이름")
            .accessibilityValue("2 minutes")
            ZStack {
                Circle()
                    .frame(width: 391, height: 650)
                Circle()
                    .fill(Color.white)
                    .frame(width: 340, height: 400)
            }
            
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "forward.fill")
                }).accessibilityLabel("Next Speaker")
                //Label("", systemImage: "forward.fill")
            }
        }
        .padding()
    
    }
}

#Preview {
    MeetingView()
}
