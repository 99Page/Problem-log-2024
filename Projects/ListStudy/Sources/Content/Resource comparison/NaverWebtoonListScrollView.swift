//
//  NaverWebtoonListScrollView.swift
//  ListStudy
//
//  Created by 노우영 on 1/20/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

/**
 # KFImage 사용시
 초기 화면 진입 시 CPU 사용률 최대 40% 증가.
 필요한 모든 데이터를 한 번에 받아옴.
 스크롤 시 최대 CPU 사용률 18% 
 
 # KFImage 미사용시
 화면 진입: 6%
 최초 스크롤: 14%
 모두 렌더링 한 후: 14%
 메모리: 40
 */
struct NaverWebtoonListScrollView: View {
    
    let naverWebtoonListModel: [NaverWebtoonLikeCellModel] = NaverWebtoonLikeCellModel.stubs()
    
    var body: some View {
        ScrollView {
            ForEach(naverWebtoonListModel) { model in
                NaverWebttonLikeCellView(naverWebttonListCellModel: model)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    NaverWebtoonListScrollView()
}
