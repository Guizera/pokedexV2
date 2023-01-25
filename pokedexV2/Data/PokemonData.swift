//
//  PokemonData.swift
//  pokedexV2
//
//  Created by José Alves da Cunha on 14/11/22.
//

import SwiftUI

//["Type", "Species", "Height", "weight", "HP", "Attack", "Defense", "Sp.Atk", "Sp.Def", "Speed"]

let pokemonData: [Pokemon] = [
    Pokemon(name: "Blastoise", description: "It crushes its foe under its heavy body to cause fainting. In a pinch, it will withdraw inside its shell.",type: "Agua", image: "blastoise", gradient: [Color("ColorBlueDark"), Color("ColorBlueLight")], about: "Blastoise has water spouts that protrude from its shell. The water spouts are very accurate. They can shoot bullets of water with enough accuracy to strike empty cans from a distance of over 160 feet.", status: ["Water", "Shellfish Pokemon", "1.6m", "85.5kg", "79", "83", "100", "85", "105", "78"]),
    Pokemon(name: "Charizard", description: "It spits fire that is hot enough to melt boulders. It may cause forest fires by blowing flames.", type: "Fogo", image: "charizard", gradient: [Color("ColorAppleDark"), Color("ColorAppleLight")], about: "Charizard flies around the sky in search of powerful opponents. It breathes fire of such great heat that it melts anything. However, it never turns its fiery breath on any opponent weaker than itself.", status: ["Fire, Flying", "Flame Pokemon", "1.7m", "90.5kg", "78", "84", "78", "109", "85", "100"]),
    Pokemon(name: "Venusaur", description: "Its plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.", type: "Planta", image: "venusaur", gradient: [Color("ColorLimeDark"), Color("ColorLimeLight")], about: "There is a large flower on Venusaur’s back. The flower is said to take on vivid colors if it gets plenty of nutrition and sunlight. The flower’s aroma soothes the emotions of people.", status: ["Grass, Poison", "Seed Pokemon", "2.0m", "100kg", "80", "82", "83", "100", "100", "80"]),
    Pokemon(name: "Pikachu", description: "Pikachu that can generate powerful electricity have cheek sacs that are extra soft and super stretchy.", type: "Eletrico", image: "pikachu", gradient: [Color("ColorLemonDark"), Color("ColorLemonLight")], about: "Whenever Pikachu comes across something new, it blasts it with a jolt of electricity. If you come across a blackened berry, it’s evidence that this Pokémon mistook the intensity of its charge.", status: ["Electric", "Mouse Pokemon", "0.4m", "6.0kg", "35", "55", "40", "50", "50", "90"]),
    Pokemon(name: "Mewtwo", description: "Its DNA is almost the same as Mew’s. However, its size and disposition are vastly different.", type: "Psiquico", image: "mewtwo", gradient: [Color("ColorPomegranateDark"), Color("ColorPomegranateLight")], about: "Mewtwo is a Pokémon that was created by genetic manipulation. However, even though the scientific power of humans created this Pokémon’s body, they failed to endow Mewtwo with a compassionate heart.", status: ["Psychic", "Genetic Pokemon", "2.0m", "122.0kg", "106", "110", "90", "154", "90", "130"]),
    Pokemon(name: "Hitmonlee", description: "This amazing Pokémon has an awesome sense of balance. It can kick in succession from any position.", type: "Lutador", image: "hitmonlee", gradient: [Color("ColorPearDark"), Color("ColorPearLight")], about: "Hitmonlee’s legs freely contract and stretch. Using these springlike legs, it bowls over foes with devastating kicks. After battle, it rubs down its legs and loosens the muscles to overcome fatigue.", status: ["Fighting", "Kicking Pokemon", "1.5m", "49.8kg", "50", "120", "53", "35", "110", "87"])


]
