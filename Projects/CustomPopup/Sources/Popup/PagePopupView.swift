//
//  PagePopupView.swift
//  CustomPopup
//
//  Created by 노우영 on 1/30/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct PagePopupView: View {
    
    @Environment(\.dismiss) var dismiss
    
    let buttonText: String
    let onButtonTapped: () -> Void
    
    var body: some View {
        ZStack {
            background()
            
            VStack {
                popupView()
                dismissButton()
            }
        }
        .ignoresSafeArea()
        .presentationBackground(.clear)
    }
    
    @ViewBuilder
    private func dismissButton() -> some View {
        Button {
            dismiss()
        } label: {
            Text("Dismiss")
                .foregroundStyle(.white)
                .font(.system(size: 20, weight: .semibold))
                .frame(width: 200, height: 100)
                .background(
                    Color.blue
                )
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
    
    
    
    @ViewBuilder
    private func popupView() -> some View {
        Button {
            onButtonTapped()
        } label: {
            Text(buttonText)
                .foregroundStyle(.white)
                .font(.system(size: 20, weight: .semibold))
                .frame(width: 200, height: 100)
                .background(
                    Color.blue
                )
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
    
    @ViewBuilder
    private func background() -> some View {
        Color.gray.opacity(0.3)
            .onTapGesture {
                dismiss()
            }
    }
}

#Preview {
    PagePopupView(buttonText: "Action button") {
        
    }
}
