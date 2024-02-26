//
//  ContentView.swift
//  ObservationResearch
//
//  Created by 노우영 on 2/25/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

enum Path: Hashable {
    case cafe(CafeModel)
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .cafe(let cafeModel):
            CafeTextView(cafeModel: cafeModel)
        }
    }
}

struct ContentView: View {
    
    @State var path = NavigationPath()
    @Bindable var cafeModel = CafeModel()
    
    
    var body: some View {
        NavigationStack(path: $path) {
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
                
                Section("Navigation") {
                    TextField("current text", text: $cafeModel.text)
                    Button("Navigate to edit text above") {
                        path.append(Path.cafe(cafeModel))
                    }
                }
            }
            .navigationDestination(for: Path.self) {
                $0.destination
            }
        }
    }
}

#Preview {
    ContentView()
}

