//
//  RandomImageResourceProvider.swift
//  PagePackage
//
//  Created by 노우영 on 1/20/24.
//  Copyright © 2024 page. All rights reserved.
//

import Foundation

public struct RandomImageResourceProvider {
    public static let shared = RandomImageResourceProvider()
    
    private init() { }
    
    public var randomImageURL: String {
        let id = Int.random(in: 1...200)
        return  "https://picsum.photos/id/\(id)/200/300"
    }
}
