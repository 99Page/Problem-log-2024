//
//  FruitModel.swift
//  ObservationResearch
//
//  Created by 노우영 on 3/9/24.
//  Copyright © 2024 page. All rights reserved.
//

import Foundation

@Observable
class FruitModel {
    var text: String = "" 
    var value: Int
    
    init(text: String, from: String) {
        debugPrint("Fruit model init from: \(from)")
        self.text = text
        self.value = .random(in: 0...1000)
    }
}

extension FruitModel: Equatable, Hashable {
    static func == (lhs: FruitModel, rhs: FruitModel) -> Bool {
        lhs.text == rhs.text
        && lhs.value == rhs.value
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(text)
        hasher.combine(value)
    }
}
