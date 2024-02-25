//
//  ContentView.swift
//  ObservationResearch
//
//  Created by 노우영 on 2/25/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Optional") {
                    NavigationLink("Observable") {
                        CafeView()
                    }
                    
                    NavigationLink("ObservedObject") {
                        CoffeeView()
                    }
                }
                
                Section("Injection") {
                    NavigationLink("Premier league") {
                        PremierLeagueView(footballTeam: PremierLeagueTeamModel())
                    }
                    
                    
                    NavigationLink("La Liga") {
                        LaLigaView(footballTeam: LaLigaTeamModel())
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

