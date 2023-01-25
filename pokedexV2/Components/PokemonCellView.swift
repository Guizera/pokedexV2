//
//  PokemonCellView.swift
//  pokedexV2
//
//  Created by José Alves da Cunha on 16/11/22.
//

import SwiftUI

struct PokemonCellView: View {
    
    var pokemon: Pokemon
    
    var body: some View {
        HStack {
            Image(pokemon.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: pokemon.gradient), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5) {
                Text(pokemon.name)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(pokemon.description)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        }
    }
}

struct PokemonCellView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCellView(pokemon: pokemonData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
