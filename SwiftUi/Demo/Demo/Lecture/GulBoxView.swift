//
//  gulBoxView.swift
//  Demo
//
//  Created by 홍세희 on 2023/10/11.
//

import SwiftUI

struct GulBoxView: View {
    @State private var gulCount: Int?
    @State private var storageCount: Int?
    @State private var result: Int?
    
    var body: some View {
        VStack{
            Text("📦📦📦📦📦")
            Text("박스의 개수를 구해보자!").font(.title)
        
            HStack{
                Text("🍊").font(.system(size: 100))
                TextField("귤의 개수는?", value: $gulCount, format: .number)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 200)
                    .onChange(of: gulCount) { oldValue, newValue in
                        result = getBox(newValue, storageCount)
                    }
                    .padding(1)
                    .background(Color.secondary)
            }
            
            HStack{
                Text("📥").font(.system(size: 100))
                TextField("박스에 들어갈 수 있는 귤의 개수는?", value: $storageCount, format: .number)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 200)
                    .onChange(of: storageCount) { oldValue, newValue in
                        result = getBox(gulCount, newValue)
                    }
                    .padding(1)
                    .background(Color.secondary)
                    //.padding(10)
            }
            
            /*Button(action: getBox, label: {
                Text("필요한 박스의 개수는?")
                    .foregroundColor(.white)
            }).padding(10).background(Color.accentColor)*/
            
            Text("필요한 박스의 수: \(result ?? 0)(Box)")
                .font(.system(size: 20))
                .padding()
                .frame(width: 300, alignment: .leading)
        }
        
    }
    func getBox(_ count: Int?, _ boxCount: Int?) -> Int {
        guard let gul = count, let box = boxCount else {
            return 0
        }
        
        if gul % box != 0 && box != 0 {
            //result = gul / box + 1
            return (gul / box + 1)
        }
        if gul % box == 0 && box != 0 {
            //result = gul / box
            return (gul / box)
        }
        
        if box == 0 {
            return 0
        }
        return 0
    }
}

#Preview {
    GulBoxView()
}
