//
//  Content.swift
//  CustomPopup
//
//  Created by 노우영 on 1/30/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var textColor: Color = .black
    @State private var isPopupPresented: Bool = false
    
    private let colors: [Color] = [.red, .green, .blue, .yellow, .purple]
    
    var body: some View {
        Button {
            isPopupPresented = true
        } label: {
            Text("Show popup")
                .font(.system(size: 16, weight: .regular))
                .foregroundStyle(textColor)
        }
        .customPopup(isPresented: $isPopupPresented,
                     buttonTittle: "Change color", 
                     onButtonTapped: {
            textColor = colors.randomElement() ?? .black
        })
        .padding(.bottom, 300)
    }
}

#Preview {
    ContentView()
}
