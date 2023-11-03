//
//  mentorDetailView.swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import SwiftUI

struct mentorDetailView: View {
    var mentor: MentorData
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack(spacing: 20) {
                    Image(mentor.image)
                        .resizable()
                        .frame(width: 380, height: 350)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                    
                    VStack(alignment: .leading, spacing:20) {
                        HStack {
                            Text("• \(mentor.name)")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            Text("\(mentor.position)님")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        
                        Text("\(mentor.position)님 자세히 알아보기!")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.secondary)
                        
                        Divider()
                        Text("소개")
                            .font(.title3)
                            .bold()
                        
                        Text(mentor.oneSentence)
                            .font(.headline)
                        
                        Divider()
                        Text("연혁")
                            .font(.title3)
                            .bold()
                        
                        Text(mentor.history)
                            .font(.headline)
                        
                        Divider()
                        
                        Text("Github & blog")
                            .font(.title3)
                            .bold()
                        HStack(alignment: .center, spacing: 30) {
                            
                            NavigationLink(destination:MyWebview(urlToLoad: mentor.gitUrl)) {
                                Image("Github")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                //                                    .clipShape(Circle())
                                    .cornerRadius(12)
                            }
                            
                            //                            Spacer()
                            
                            NavigationLink(destination:MyWebview(urlToLoad: mentor.blogUrl)) {
                                Image("blogIcon")
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(12)
                            }
                        }
                    }
                    
                }.padding()
                
            }
            
        }
       
    }
}



#Preview {
    mentorDetailView(mentor: mentor[0])
}
