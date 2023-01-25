//
//  PokemonCardView.swift
//  pokedexV2
//
//  Created by José Alves da Cunha on 10/11/22.
//

import SwiftUI

struct PokemonCardView: View {
    //MARK: - PROPERTIES
    
    var pokemon: Pokemon
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //POKEMON: IMAGE
                Image(pokemon.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                //POKEMON: NAME
                Text(pokemon.name)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),radius: 2, x: 2, y: 2)
                
                //POKEMON: DESCRIPTION
                Text(pokemon.description)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                //BUTTON: START
                StartButtonView()
            } //VSTACK
        }//ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: pokemon.gradient), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct PokemonCardView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCardView(pokemon: pokemonData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
