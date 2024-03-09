//
//  BindableFruitView.swift
//  ObservationResearch
//
//  Created by 노우영 on 3/9/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct BindableFruitView: View {
    
    @Bindable var fruitModel: FruitModel
    
    init(fruitModel: FruitModel) {
        debugPrint("Bindalbe fruit view init")
        self.fruitModel = fruitModel
    }
    
    var body: some View {
        VStack {
            Text("Bindable fruit \(fruitModel.value)")
            
            Button("Rand") {
                fruitModel.value = .random(in: 0...1000)
            }
        }
    }
}
