//
//  CafeView.swift
//  ObservationResearch
//
//  Created by 노우영 on 2/25/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct CafeView: View {
    
    @State private var cafeModel: CafeModel?
    
    var body: some View {
        if let cafeModel {
            VStack {
                CafeTextView(cafeModel: cafeModel)
                
                Text(cafeModel.text)
            }
        } else {
            Button("카페 생성") {
                cafeModel = CafeModel()
            }
        }
    }
}

#Preview {
    CafeView()
}
