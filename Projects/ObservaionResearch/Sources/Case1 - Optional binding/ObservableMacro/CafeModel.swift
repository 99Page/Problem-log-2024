//
//  CafeModel.swift
//  ObservationResearch
//
//  Created by 노우영 on 2/24/24.
//  Copyright © 2024 page. All rights reserved.
//

import Foundation

@Observable
final class CafeModel: Hashable, Identifiable {
    var id = UUID().uuidString
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    static func == (lhs: CafeModel, rhs: CafeModel) -> Bool {
        lhs.id == rhs.id
    }
    
    var text: String = ""
}

