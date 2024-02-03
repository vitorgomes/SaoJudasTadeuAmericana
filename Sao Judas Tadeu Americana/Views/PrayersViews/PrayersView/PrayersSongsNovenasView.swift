//
//  PrayersSongsNovenasView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 02/02/24.
//

import SwiftUI

struct PrayersSongsNovenasView: View {
    var body: some View {
        List {
            HStack {
                Text("🤲")
                    .font(.title)
                    .padding(.trailing, 8)
                VStack(alignment: .leading) {
                    Text("Orações")
                        .font(.title)
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.ooooooooooooo") // TODO: Test trailing padding here, when the text is long
                }
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
            //.background(Color(.blue))
            .overlayedPulsingFireAnimation(paddingSize: 0)
        }
        .navigationTitle("Orações / Cantos / Novenas") // TODO: Make the title dynamic using the option the user chose in the previous screen
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        PrayersSongsNovenasView()
    }
}
