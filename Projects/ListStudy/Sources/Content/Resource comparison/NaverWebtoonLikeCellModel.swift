//
//  NaverWebtoonLikeModel.swift
//  ListStudy
//
//  Created by 노우영 on 1/20/24.
//  Copyright © 2024 page. All rights reserved.
//

import Foundation
import PagePackage

struct NaverWebtoonLikeCellModel {
    let imageURL: String
    let titleText: String
    private let rating: Double
    private let date: Date
    
    init(imageURL: String, titleText: String, rating: Double, date: Date) {
        self.imageURL = imageURL
        self.titleText = titleText
        self.rating = rating
        self.date = date
    }
    
    var ratingText: String {
        let result = String((rating * 10).rounded() / 10)
        return result
    }
    
    var dateText: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yy.MM.dd"
        return dateFormatter.string(from: date)
    }
    
    static func stubs() -> [NaverWebtoonLikeCellModel] {
        var result: [NaverWebtoonLikeCellModel] = [] 
        
        for _ in 0..<100 {
            result.append(stub())
        }
        
        return result
    }
    
    static func stub() -> NaverWebtoonLikeCellModel {
        let imageURL = RandomImageResourceProvider.shared.randomImageURL
        let rating = Double.random(in: 0...10)
        return NaverWebtoonLikeCellModel(imageURL: imageURL,
                              titleText: "100화",
                              rating: rating,
                              date: .now)
    }
}

extension NaverWebtoonLikeCellModel: Identifiable {
    var id: String {
        UUID().uuidString
    }
}
