//
//  view + customPopup.swift
//  CustomPopup
//
//  Created by 노우영 on 1/30/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

extension View {
    func customPopup(isPresented: Binding<Bool>,
                     buttonTittle: String,
                     onButtonTapped: @escaping () -> Void) -> some View {
        self
            .fullScreenCover(isPresented: isPresented) {
                PagePopupView(buttonText: buttonTittle, onButtonTapped: onButtonTapped)
            }
            .transaction(value: isPresented.wrappedValue) {
                $0.disablesAnimations = true
            }
    }
}
