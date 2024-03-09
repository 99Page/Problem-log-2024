//
//  RenderingResearchView.swift
//  ObservationResearch
//
//  Created by 노우영 on 3/9/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct RenderingResearch1View: View {
    
    @State private var renderToggle: Bool = false
    @State private var fruitModel = FruitModel(text: "", from: "ResearchView")
    
    
    /// [View init 호출]
    /// toggle 값이 바뀔 때 마다 모든 View의 init은 호출된다.
    /// read하고 있는 model data 값이 바뀌면 body 호출 -> 내부의 View 호출이 된다.
    ///
    /// [Model init 호출]
    /// Bindable의 Model data는 이 뷰에 있으니 init이 호출되지 않는다.
    /// State와 Just의 Model data는
    /// View init이 호출되면서 같이 호출된다.
    ///
    /// [Model data의 반영]
    /// Just의 Model data가 init되면 Just의 뷰에 적용된다.
    /// State는 Model data가 init되어도 뷰에 적용되지 않는다.
    ///
    /// [데이터를 공유하고 싶다면?]
    /// State, Bindable, Non 아무거나 사용해도 된다.
    ///
    /// [State는 언제?]
    /// 상위 뷰의 body 호출에서 독립적인 상태를 만들고 싶을 때
    var body: some View {
        VStack {
            Button("Render") {
                renderToggle.toggle()
                fruitModel.value = .random(in: 0...1000)
            }
            .foregroundStyle(renderToggle ? Color.red : Color.blue)
            
            StateFruitView(fruitModel: fruitModel)
            
            JustFruitView(fruitModel: fruitModel)
            
            BindableFruitView(fruitModel: fruitModel)
        }
    }
}

#Preview {
    RenderingResearch1View()
}
