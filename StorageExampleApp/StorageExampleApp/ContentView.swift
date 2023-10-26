//
//  ContentView.swift
//  StorageExampleApp
//
//  Created by 홍세희 on 2023/10/26.
//
/*AppStorate 를 사용하여 사용자의 선호하는 테마 색상을 저장하고, 앱의 모든 뷰에 적용하는 코드를 작성하세요.
 
 첫 화면에 컬러 피커로 사용자 색상 선택이 가능
 두 번째 화면 바탕색을 선택한 색으로 채움
 앱을 종료 후 다시 실행하면 선택한 색상으로 복원
 */
import SwiftUI

final class ChoiceColor: ObservableObject {
    @Published var colors: [Color] = [.black, .red, .green, .blue]
    var colornames = ["Black", "Red", "Green", "Blue"]
}

struct ContentView: View {
    @StateObject var whatColor: ChoiceColor = ChoiceColor()
    @AppStorage("number") var colorIndex: Int = 0
    //MARK: ?
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("원하는 배경화면 색상을 선택하세요")
                    .font(.title)
                Spacer()
                Picker(selection: $colorIndex, label: Text("Picker")) {
                    ForEach(0..<whatColor.colornames.count, id: \.self) { color in
                        Text(whatColor.colornames[color])
                            .foregroundStyle(whatColor.colors[color])
                    }
                }.pickerStyle(.wheel).background(Color.white)
                Spacer()
                NavigationLink(destination: StorageSecondView(whatColor: whatColor, index: $colorIndex)) {
                    Text("다음 화면에 색상 적용하기")
                }
            }
            .padding()
            //.background(whatColor.colors[colorIndex])
        }
    }
}

#Preview {
    ContentView()
}
