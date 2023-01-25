//
//  SettingsView.swift
//  pokedexV2
//
//  Created by José Alves da Cunha on 25/01/23.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    
                    GroupBox(label: SettingLabelView(labelText: "Pokedex V2", labelImage: "info.circle")) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Pokedex V2 feita em swiftUI em live.")
                                .font(.footnote)
                        }
                    }
                    //MARK: - SECTION 2
                    GroupBox(label: SettingLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                        
                        SettingsRowView(name: "Developer", content: "Guilherme Cunha")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "Guilherme Cunha", linkDestination: "guilhermecunha.me")
                        SettingsRowView(name: "Instagram", linkLabel: "@guicunhaa7", linkDestination: "instagram.com/guicunhaa7")
                        SettingsRowView(name: "Github", linkLabel: "Guizera", linkDestination: "github.com/Guizera")
                        SettingsRowView(name: "App Version", content: "1.0.0")
                    }
                }// VSTACK
                .navigationTitle(Text("Settings"))
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue
                        .dismiss()
                }) {
                    Image(systemName: "xmark")
                })
                .padding()
            } //scroll
        } //navigation
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
