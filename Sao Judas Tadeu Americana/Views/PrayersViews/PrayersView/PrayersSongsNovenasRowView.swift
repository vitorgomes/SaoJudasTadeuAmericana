//
//  PrayersSongsNovenasRowView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 09/02/24.
//

import SwiftUI

struct PrayersSongsNovenasRowView: View {
    
    @State var userSelection: String
    var prayersSongsNovenasRowContent: PrayersSongsNovenasRowContent
    
    var body: some View {
        HStack {
            Text(prayersSongsNovenasRowContent.emoji)
                .font(.title)
                .padding(.trailing, 8)
            VStack(alignment: .leading) {
                Text(prayersSongsNovenasRowContent.title)
                    .font(.title)
                Text(prayersSongsNovenasRowContent.description) // TODO: Test trailing padding here, when the text is long
            }
        }
    }
}

// Use for test purposes
#Preview {
    PrayersSongsNovenasRowView(userSelection: "Orações", prayersSongsNovenasRowContent: prayersSongsNovenasRowContents.first!)
}
