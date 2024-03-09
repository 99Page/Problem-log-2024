//
//  ContentView.swift
//  ObservationResearch
//
//  Created by 노우영 on 2/25/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(Navigator.self) var navigator
    @Bindable var cafeModel = CafeModel()
    
    
    var body: some View {
        @Bindable var navigator = navigator
        
        NavigationStack(path: $navigator.path) {
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
                        navigator.path.append(Path.cafe(cafeModel))
                    }
                }
                
                Section("Envrionment to Bindable") {
                    AppleView()
                }
                
                Section("Rendering researh") {
                    NavigationLink("Without navigation") {
                        RenderingResearch1View()
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

