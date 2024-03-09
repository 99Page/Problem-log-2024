//
//  AppleView.swift
//  ObservationResearch
//
//  Created by wooyoung on 2/28/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct AppleView: View {
    
    @Environment(AppleModel.self) var appleModel
    
    var body: some View {
        VStack {
//            @Bindable var appleModel = appleModel
//            TextField("", text: $appleModel.cellPhone)
        }
    }
}

#Preview {
    AppleView()
}
