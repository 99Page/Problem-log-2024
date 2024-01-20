//
//  NaverWebtoonLikeLazyScrollView.swift
//  ListStudy
//
//  Created by 노우영 on 1/20/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI
import Kingfisher

/**
 # KFImage 사용시
 KFImage + LazyVStack 사용이 CPU 사용률이 100%까지 오르면서 앱이 멈춰버린다.
 비교 불가능.. 
 
 # KFImage 미사용시
 화면 진입: 6%
 최초 스크롤: 60%
 모두 렌더링 한 후: 60%
 메모리: 스크롤 할 수록 계속 증가
 */
struct NaverWebtoonLikeLazyScrollView: View {
    
    let naverWebtoonListModel: [NaverWebtoonLikeCellModel] = NaverWebtoonLikeCellModel.stubs()
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(naverWebtoonListModel) { model in
                NaverWebttonLikeCellView(naverWebttonListCellModel: .stub())
                }
            }
        }
    }
}

#Preview {
    NaverWebtoonLikeLazyScrollView()
}
