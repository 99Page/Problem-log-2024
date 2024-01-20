//
//  NaverWebtoonLikeListView.swift
//  ListStudy
//
//  Created by 노우영 on 1/20/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

/**
 # KFImage 사용시
 초기 화면 진입 시 CPU 사용률은 1% 증가.
 메모리는 스크롤을 하면서 필요한 양에 따라서 증가.
 스크롤 시 최대 CPU 사용률은 30% 까지 증가
 
 # KFImage 미사용시
 화면 진입: 0%
 최초 스크롤: 30%
 모두 렌더링 한 후: 30%
 메모리: 스크롤 하면 할 수록 계속 증가
 */
struct NaverWebtoonLikeListView: View {
    
    let naverWebtoonListModel: [NaverWebtoonLikeCellModel] = NaverWebtoonLikeCellModel.stubs()
    
    var body: some View {
        List {
            ForEach(naverWebtoonListModel) { model in
                NaverWebttonLikeCellView(naverWebttonListCellModel: model)
            }
        }
    }
}

#Preview {
    NaverWebtoonLikeListView()
}
