//
//  pokedexV2App.swift
//  pokedexV2
//
//  Created by José Alves da Cunha on 04/11/22.
//

import SwiftUI

@main
struct pokedexV2App: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
