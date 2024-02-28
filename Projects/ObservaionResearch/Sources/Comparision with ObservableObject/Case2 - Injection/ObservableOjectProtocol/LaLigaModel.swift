//
//  LaLigaModel.swift
//  ObservationResearch
//
//  Created by 노우영 on 2/25/24.
//  Copyright © 2024 page. All rights reserved.
//

import Foundation

final class LaLigaModel: ObservableObject {
    /// ObservableObject in ObservableObject 구조도
    /// 렌더링할 때 문제가 없다
    /// iOS 17로 오면서 변경된 사항같다.
    var team: LaLigaTeamModel = LaLigaTeamModel()
    
    /// 여기에
    /// published를 안붙여도 렌더링 시
    /// 아무런 문제가 없다
    var goatName: String = "Messi"
    
    init(team: LaLigaTeamModel) {
        self.team = team
    }
}
