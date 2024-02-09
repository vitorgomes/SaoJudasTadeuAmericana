//
//  PrayersSongsNovenasRowView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 09/02/24.
//

import SwiftUI

struct PrayersSongsNovenasRowView: View {
    
    @State var userSelection: String
    
    var body: some View {
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
    }
}

#Preview {
    PrayersSongsNovenasRowView(userSelection: "prayer")
}
