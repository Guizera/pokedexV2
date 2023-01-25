//
//  Pokemon.swift
//  pokedexV2
//
//  Created by José Alves da Cunha on 10/11/22.
//

import SwiftUI

struct Pokemon: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var type: String
    var image: String
    var gradient: [Color]
    var about: String
    var status: [String]
}
