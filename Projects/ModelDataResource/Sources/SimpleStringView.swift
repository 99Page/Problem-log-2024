//
//  SimpleStringView.swift
//  ModalDataResource
//
//  Created by wooyoung on 2/23/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct SimpleStringView: View {
    
    private var texts: [String] = Array(repeating: "모델 데이터는 cpu와 메모리를 얼마나 사용할까?", count: 1000)
    
    var body: some View {
        List {
            ForEach(texts.indices, id: \.self) { index in
                Text("\(texts[index])\(index)")
            }
        }
    }
}

#Preview {
    SimpleStringView()
}
