//
//  ObservationResearchApp.swift
//  ObservationResearch
//
//  Created by 노우영 on 2/24/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

@main
struct ObservationResearchApp: App {
    
    @State private var appleModel = AppleModel()
    @State private var navigator = Navigator()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appleModel)
                .environment(navigator)
        }
    }
}
