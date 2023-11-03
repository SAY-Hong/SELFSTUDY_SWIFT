//
//  teacherView.swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import SwiftUI

//JSON 파일 ',' 유무 확인 잘하기
var teacher: [TeacherData] = loadJson("teacherData.json")
var mentor: [MentorData] = loadJson("mentorData.json")

struct introduceListView: View {
    @StateObject var teacherInfo: TeacherInformation = TeacherInformation(teachers: teacher)
    @StateObject var mentorInfo: MentorInformation = MentorInformation(mentors: mentor)
    
    var body: some View {
        NavigationStack {
            List() {
                Section(header: Text("강사진").font(.title3).foregroundStyle(Color.orange)) {
                    ForEach(0..<teacherInfo.teachers.count, id: \.self) { index in
                        NavigationLink(destination: teacherDetailView(teacher: teacher[index])) {
                            teacherCellView(teacher: teacher[index])
                        }
                    }
                }
                Section(header: Text("멘토진").font(.title3).foregroundStyle(Color.orange)) {
                    ForEach(0..<mentorInfo.mentors.count, id: \.self) { index in
                        NavigationLink(destination: mentorDetailView(mentor: mentor[index])) {
                            mentorCellView(mentor: mentor[index])
                        }
                    }
                }
            }.navigationTitle("강사진 및 멘토링 소개")
        }
    }
}

#Preview {
    introduceListView()
}
