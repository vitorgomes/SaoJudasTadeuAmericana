//
//  PrayersSongsNovenasView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 02/02/24.
//

import SwiftUI

struct PrayersSongsNovenasView: View {
    @Binding var navigationTitleChoice: String
    @State private var searchText: String = ""
    @Binding var searchPrompt: String
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(prayersSongsNovenasRowContents) { item in
                    PrayersSongsNovenasRowView(userSelection: "Orações", prayersSongsNovenasRowContent: item)
                }

                HStack {
                    Text("🎵")
                        .font(.title)
                        .padding(.trailing, 8)
                    VStack(alignment: .leading) {
                        Text("Cantos")
                            .font(.title)
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elitoooooooo.")
                    }
                }
                
                HStack {
                    Text("🕯️")
                        .font(.title)
                        .padding(.trailing, 8)
                    VStack(alignment: .leading) {
                        Text("Novenas")
                            .font(.title)
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.ooooooooooooooooooooooooooo")
                    }
                }
                .overlayedPulsingFireAnimation(paddingSize: 0) // TODO: Need to add logic to implement this when user has an ongoing Novena
            }
            .searchable(text: $searchText, prompt: "Pesquisar por \(searchPrompt)") // TODO: Replace the text for "Pesquisar por ---" where "---" is "Oração", "Canto" or "Novena" depending on what user chose on previous screen (PrayersView)
        }
        .navigationTitle(navigationTitleChoice) // TODO: Make the title dynamic using the option the user chose in the previous screen
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    NavigationStack {
        PrayersSongsNovenasView(navigationTitleChoice: .constant("Orações"), searchPrompt: .constant("Oração"))
    }
}
