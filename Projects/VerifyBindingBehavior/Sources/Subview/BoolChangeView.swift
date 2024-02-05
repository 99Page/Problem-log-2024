//
//  BoolChangeView.swift
//  VerifyBindingBehavior
//
//  Created by wooyoung on 2/5/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct BoolChangeView: View {
    
    @Binding var value: Bool
    
    var body: some View {
        Button {
            value.toggle()
        } label: {
            Text(String(value))
        }
    }
}

#Preview {
    BoolChangeView(value: .constant(true))
}
