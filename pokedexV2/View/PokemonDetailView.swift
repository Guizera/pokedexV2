//
//  PokemonDetailView.swift
//  pokedexV2
//
//  Created by José Alves da Cunha on 16/11/22.
//

import SwiftUI

struct PokemonDetailView: View {
    
    var pokemon: Pokemon
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    PokemonHeaderView(pokemon: pokemon)
                    VStack(alignment: .leading, spacing: 20) {
                        
                        //pokemon name
                        Text(pokemon.name)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(pokemon.gradient[1])
                        
                        //pokemon description
                        Text(pokemon.description)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        ///TODO: componente de status
                        Text("\(pokemon.name) Status")
                            .fontWeight(.bold)
                            .foregroundColor(pokemon.gradient[1])
                        
                        PokemonStatsView(pokemon: pokemon)
                        
                        Text("Learn more about \(pokemon.name)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(pokemon.gradient[1])
                        
                        //Descricao
                        Text(pokemon.about)
                            .multilineTextAlignment(.leading)
                    }//Vstack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//VStack
                .navigationBarTitle(pokemon.name, displayMode: .inline)
                    .navigationBarHidden(true)
            }// ScrollView
            .edgesIgnoringSafeArea(.top)
        }//Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemon: pokemonData[0])
    }
}
