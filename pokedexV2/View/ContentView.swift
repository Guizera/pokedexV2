//
//  ContentView.swift
//  pokedexV2
//
//  Created by José Alves da Cunha on 04/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings: Bool = false
    
    var pokemon: [Pokemon] = pokemonData
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(pokemon.shuffled()) { pokemon in
                    NavigationLink(destination: PokemonDetailView(pokemon: pokemon)) {
                        PokemonCellView(pokemon: pokemon)
                    }
                }
            }
            .navigationTitle("Pokemons")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }){
                Image(systemName: "slider.horizontal.3")
            } // BUTTON
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            )
        } //NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(pokemon: pokemonData)
    }
}
