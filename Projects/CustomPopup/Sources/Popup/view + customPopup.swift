//
//  view + customPopup.swift
//  CustomPopup
//
//  Created by 노우영 on 1/30/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

extension View {
    func customPopup(isPresented: Binding<Bool>) -> some View {
        self
            .fullScreenCover(isPresented: isPresented) {
                PagePopupView()
            }
            .transaction(value: isPresented.wrappedValue) {
                $0.disablesAnimations = true
            }
    }
}
