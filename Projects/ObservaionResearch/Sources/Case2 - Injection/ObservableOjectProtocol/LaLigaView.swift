//
//  LaLigaView.swift
//  ObservationResearch
//
//  Created by 노우영 on 2/25/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct LaLigaView: View {
    
    @StateObject private var laLigaModel: LaLigaModel
    
    /// ObservableObject도 State 사용 가능하다.
    @State private var isItPossible = LaLigaModel(team: LaLigaTeamModel())
    
    init(footballTeam: LaLigaTeamModel) {
        let laLigaModel = LaLigaModel(team: footballTeam)
        self._laLigaModel = StateObject(wrappedValue: laLigaModel)
    }
    var body: some View {
        VStack {
            TextField("La Liga team?", text: $laLigaModel.team.teamName)
            
            TextField("goat?", text: $laLigaModel.goatName)
        }
    }
}

#Preview {
    LaLigaView(footballTeam: LaLigaTeamModel())
}
