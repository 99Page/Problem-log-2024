//
//  CafeTextView.swift
//  ObservationResearch
//
//  Created by 노우영 on 2/25/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct CafeTextView: View {
    
    @Bindable var cafeModel: CafeModel
    
    var body: some View {
        HStack {
            Image(systemName: "")
            TextField("Input cafe name", text: $cafeModel.text)
        }
    }
}

#Preview {
    CafeTextView(cafeModel: CafeModel())
}
