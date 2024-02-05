//
//  TextChangeView.swift
//  VerifyBindingBehavior
//
//  Created by wooyoung on 2/5/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct TextChangeView: View {
    @Binding var text: String
    private let targetText: String = "change text"
    var body: some View {
        Button {
            if text !=  targetText {
                text = targetText
            } else {
                text = "zzz"
            }
        } label: {
            Text("text: \(text)")
        }
    }
}

#Preview {
    TextChangeView(text: .constant(""))
}
