//
//  teacherData.swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import SwiftUI

struct TeacherData: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var position: String
    var oneSentence: String
    var history: String
}

struct MentorData: Codable, Identifiable{
    var id: String
    var name: String
    var image: String
    var position: String
    var oneSentence: String
    var history: String
    var gitUrl: String
    var blogUrl: String
}


class TeacherInformation: ObservableObject {
    @Published var teachers: [TeacherData]
    init(teachers: [TeacherData] = []) {
        self.teachers = teachers
    }
}

class MentorInformation: ObservableObject {
    @Published var mentors: [MentorData]
    init(mentors: [MentorData] = []) {
        self.mentors = mentors
    }
}
