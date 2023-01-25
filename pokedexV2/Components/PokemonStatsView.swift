//
//  PokemonStatsView.swift
//  pokedexV2
//
//  Created by José Alves da Cunha on 25/01/23.
//

import SwiftUI

struct PokemonStatsView: View {
    
    var pokemon: Pokemon
    let status: [String] = ["Type", "Species", "Height", "weight", "HP", "Attack", "Defense", "Sp.Atk", "Sp.Def", "Speed"]

    var body: some View {
        GroupBox() {
            DisclosureGroup("\(pokemon.name) Status") {
                ForEach(0..<status.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(status[item])
                        }
                        .foregroundColor(pokemon.gradient[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(pokemon.status[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } //GROUPBOX
    }
}

struct PokemonStatsView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonStatsView(pokemon: pokemonData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
