//
//  StateFruitView.swift
//  ObservationResearch
//
//  Created by 노우영 on 3/9/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct StateFruitView: View {
    
    /// Model을 외부에서 주입한 경우
    /// Bindable한 것과 비슷하게 동작한다.
    @State private var injectedFruitModel: FruitModel
    @State private var fruitModel: FruitModel
    
    init(fruitModel: FruitModel) {
        self.injectedFruitModel = fruitModel
        self.fruitModel = FruitModel(text: "", from: "StateFruitView")
    }
    
    var body: some View {
        VStack {
            Text("Inject State fruit \(injectedFruitModel.value)")
            Text("Own State fruit \(fruitModel.value)")
            
            Button("Rand in state") {
                injectedFruitModel.value = .random(in: 0...1000)
            }
        }
    }
}
