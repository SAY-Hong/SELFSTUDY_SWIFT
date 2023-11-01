//
//  ListNevigationView.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/31.
//

import SwiftUI

//MARK: 동적리스트
//리스트에서 사용할 데이터 만들기
//리스트에 표시할 데이터는 Id...
//id 프로퍼티 필수!!! -> 각 항목을 고유하게 식별하는데 사용된댜.
//UUID() 메서드는 각 항목마다 고유한 ID를 자동으로 생성하는데 사용한다.
//Hashable 프로토콜을 따르는 모든 스위프트 타입이나 커스텀 타입이 가능. -> 고유식별 키값을 준다.
struct ToDoItem: Identifiable, Hashable { //Identifiable프로토콜을 따라서 id 생성하기.
    var id = UUID()
    var task: String
    var imageName: String
}

struct ListNevigationView: View {
    @State var listData: [ToDoItem] = [
        ToDoItem(task: "Take out the trash", imageName: "trash.circle.fill"),
        ToDoItem(task: "Pick up the kids", imageName: "person.2.fill"),
        ToDoItem(task: "Wash the car", imageName: "car.fill")
    ]
    
    @State private var istToggledOn = false
    //@State private var
    var body: some View {
       //가장 단순한 형태의 List 표현
        //하나 이상 뷰의 각 행을 수직 방향의 목록으로 정보를 표현
        //리스트 구분자 및 행 수정하기.
        List {
            Section(header: Text("To Do Tasks")) {
                ForEach(listData) { item in
                    HStack {
                        Image(systemName: item.imageName)
                        Text(item.task)
                    }
                }.onDelete(perform: { indexSet in //onDelete와 onMove
                    listData.remove(atOffsets: indexSet)
                })
                .onMove(perform: { indices, newOffset in
                    listData.move(fromOffsets: indices, toOffset: newOffset)
                })
            }
        }
        
    }
}

#Preview {
    ListNevigationView()
}
