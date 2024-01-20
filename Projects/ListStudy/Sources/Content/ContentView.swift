//
//  ContentView.swift
//  ListStudy
//
//  Created by 노우영 on 1/20/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("List") {
                    NaverWebtoonLikeListView()
                }
                
                NavigationLink("Scroll") {
                    NaverWebtoonListScrollView()
                }
                
                NavigationLink("Scroll + LazyVStack") {
                    NaverWebtoonLikeLazyScrollView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
