//
//  PremierLeagueView.swift
//  ObservationResearch
//
//  Created by 노우영 on 2/25/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct PremierLeagueView: View {
    
    @Bindable var premierLeagueModel: PremierLeagueModel
    
    init(footballTeam: PremierLeagueTeamModel) {
        self.premierLeagueModel = PremierLeagueModel(team: footballTeam)
    }
    
    var body: some View {
        TextField("Team name?", text: $premierLeagueModel.team.teamName)
    }
}

#Preview {
    PremierLeagueView(footballTeam: PremierLeagueTeamModel())
}
