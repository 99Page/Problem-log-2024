//
//  Content.swift
//  CustomPopup
//
//  Created by 노우영 on 1/30/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPopupPresented: Bool = false
    
    var body: some View {
        Button {
            isPopupPresented = true
        } label: {
            Text("Show popup")
        }
        .customPopup(isPresented: $isPopupPresented)
        .padding(.bottom, 300)
    }
}

#Preview {
    ContentView()
}
