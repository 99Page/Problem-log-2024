//
//  EPLModel.swift
//  ObservationResearch
//
//  Created by 노우영 on 2/25/24.
//  Copyright © 2024 page. All rights reserved.
//

import Foundation

@Observable
final class PremierLeagueModel {
    var team: PremierLeagueTeamModel
    
    init(team: PremierLeagueTeamModel) {
        self.team = team
    }
}
