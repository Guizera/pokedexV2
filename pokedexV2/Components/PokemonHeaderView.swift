//
//  PokemonHeaderView.swift
//  pokedexV2
//
//  Created by José Alves da Cunha on 16/11/22.
//

import SwiftUI

struct PokemonHeaderView: View {
    
    var pokemon: Pokemon
    
    @State private var isAnimatingImage: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: pokemon.gradient), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(pokemon.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }// ZSTACK
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

struct PokemonHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonHeaderView(pokemon: pokemonData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
