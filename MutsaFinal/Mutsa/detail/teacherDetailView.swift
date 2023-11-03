//
//  detailView.swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import SwiftUI

struct teacherDetailView: View {
    
    var teacher: TeacherData
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack(spacing: 20) {
                    Image(teacher.image)
                        .resizable()
                        .frame(width: 380, height: 350)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)

                    VStack(alignment: .leading, spacing:20) {
                        HStack {
                            Text("• \(teacher.name)")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            Text("\(teacher.position)님")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Spacer()
                        }

                        Text("\(teacher.position)님 자세히 알아보기!")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.secondary)

                        Divider()
                            Text("소개")
                            .font(.title3)
                            .bold()

                            Text(teacher.oneSentence)
                            .font(.headline)

                        Divider()
                            Text("연혁")
                            .font(.title3)
                            .bold()

                        Text(teacher.history)
                            .font(.headline)

                        Divider()


                    }.padding()
                }
                
            }
        }
    }
}

//#Preview {
//    teacherDetailView(teacher: TeacherData(name: "박준영", image: "jun", position: "Lecturer", oneSentence: "사람을 변화시키는 일의 희열과 가치를 찾고 있거나 이미 알고 있는 분들과의 교류를 희망하는 프로그래머", history: "• (현)AICBM(AI+IoT+Cloud+Big Data+Mobile) 융합 프로젝트 강의/개발\n • (전) F사 서버 팀장\n • (전) N사 서버 개발\n • (전) L사 개발실장\n"))
//}
