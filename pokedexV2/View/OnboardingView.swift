//
//  OnboardingView.swift
//  pokedexV2
//
//  Created by José Alves da Cunha on 14/11/22.
//

import SwiftUI

struct OnboardingView: View {
    
    var pokemons: [Pokemon] = pokemonData
    
    var body: some View {
        TabView {
            ForEach(pokemons) { pokemon in
                PokemonCardView(pokemon: pokemon)
            } //FOREACH
        }// TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(pokemons: pokemonData)
    }
}
