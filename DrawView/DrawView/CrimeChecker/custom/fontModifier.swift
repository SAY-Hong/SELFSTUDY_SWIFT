//
//  fontModifier.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/03.
//

import SwiftUI
//font
let montThin = "MontSerrat-Thin"
let montBold = "MontSerrat-Bold"
let montBlack = "MontSerrat-Black"
let montLight = "MontSerrat-Light"

struct HomeTextCustomSize: ViewModifier {
    var size: CGFloat
    init(size: CGFloat) {
        self.size = size
    }
    func body(content: Content) -> some View {
        content
            .font(.custom(montLight, size: size))
            .foregroundStyle(Color.white)
            
    }
}
