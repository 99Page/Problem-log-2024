//
//  ContentView.swift
//  MultiAlert
//
//  Created by 노우영 on 1/21/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isFirstAlertPresented: Bool = false
    @State private var isSecondAlertPresented: Bool = false
    
    var body: some View {
        VStack {
            Button {
                isFirstAlertPresented = true
            } label: {
                Text("Show first alert")
            }
            
            Button {
                isSecondAlertPresented = true
            } label: {
                Text("Show first alert")
            }
        }
        // 예전에는 하나의 뷰에 여러 alert modifier를 사용하면
        // 마지막에 사용한 것만 적용됐는데
        // 이제는 사용한 개수에 상관없이 다 보여주는 것 같다.
        .alert("First alert", isPresented: $isFirstAlertPresented) {
            
        }
        .alert("Second alert", isPresented: $isSecondAlertPresented) {
            
        }
    }
}

#Preview {
    ContentView()
}
