//
//  ContentView.swift
//  ModalDataResource
//
//  Created by wooyoung on 2/23/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                /// 1000개의 String으로 확인을 해봤을 때 양쪽에서 사용하는 cpu와 메모리에 큰 차이는 없다.
                NavigationLink("Model data") {
                    ModelDataCaseView()
                }
                
                NavigationLink("Simple string") {
                    SimpleStringView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
