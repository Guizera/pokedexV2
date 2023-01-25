//
//  SettingLabelView.swift
//  pokedexV2
//
//  Created by José Alves da Cunha on 25/01/23.
//

import SwiftUI

struct SettingLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(labelText: "PokeDex V2", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
