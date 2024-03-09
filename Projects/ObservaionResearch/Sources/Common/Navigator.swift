//
//  Path.swift
//  ObservationResearch
//
//  Created by 노우영 on 3/9/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

@Observable
final class Navigator {
    var path: [Path] = []
}

enum Path: Hashable {
    case cafe(CafeModel)
    case justFruit(FruitModel)
    case bindableFruit(FruitModel)
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .cafe(let cafeModel):
            CafeTextView(cafeModel: cafeModel)
        case .justFruit(let fruitModel):
            JustFruitView(fruitModel: fruitModel)
        case .bindableFruit(let fruitModel):
            BindableFruitView(fruitModel: fruitModel)
        }
    }
}
