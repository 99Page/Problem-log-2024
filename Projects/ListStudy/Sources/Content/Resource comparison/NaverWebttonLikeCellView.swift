//
//  NaverWebttonLikeCellView.swift
//  ListStudy
//
//  Created by 노우영 on 1/20/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI
import Kingfisher

struct NaverWebttonLikeCellView: View {
    
    let naverWebttonListCellModel: NaverWebtoonLikeCellModel
    
    var body: some View {
        HStack {
            //            KFImage(URL(string: naverWebttonListCellModel.imageURL))
            //                .resizable()
            //                .frame(width: 100, height: 70)
            //                .clipShape(RoundedRectangle(cornerRadius: 10))
            Image(systemName: "apple.logo")
                .resizable()
                .frame(width: 100, height: 70)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading, spacing: 15) {
                Text("Title")
                
                
                HStack(spacing: 3) {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 15, height: 15)
                    
                    Text(naverWebttonListCellModel.ratingText)
                        .padding(.trailing, 40)
                    
                    Text(naverWebttonListCellModel.dateText)
                }
                .foregroundStyle(Color(.gray))
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    NaverWebttonLikeCellView(naverWebttonListCellModel: .stub())
        .padding(.horizontal, 10)
}
