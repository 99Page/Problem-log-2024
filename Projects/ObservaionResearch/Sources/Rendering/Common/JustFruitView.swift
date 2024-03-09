//
//  JustFruitView.swift
//  ObservationResearch
//
//  Created by 노우영 on 3/9/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct JustFruitView: View {
    
    let injectedFruitModel: FruitModel
    let ownFruitModel: FruitModel
    
    init(fruitModel: FruitModel) {
        self.injectedFruitModel = fruitModel
        self.ownFruitModel = FruitModel(text: "", from: "Just fruit view")
    }
    
    var body: some View {
        VStack {
            Text("Injected just fruit: \(injectedFruitModel.value)")
            Text("own just fruit: \(ownFruitModel.value)")
            
            Button("Rand") {
                injectedFruitModel.value = .random(in: 0...1000)
            }
        }
    }
}
