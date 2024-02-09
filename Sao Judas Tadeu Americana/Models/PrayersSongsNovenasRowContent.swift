//
//  PrayersSongsNovenasRowContent.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 09/02/24.
//

import Foundation

struct PrayersSongsNovenasRowContent: Identifiable {
    var id = UUID()
    var emoji = String()
    var title = String()
    var description = String()
}

// TODO: Sample data, replace later when SwiftData or CoreData implemented
var prayersSongsNovenasRowContents = [
    PrayersSongsNovenasRowContent(emoji: "🤲", title: "Orações", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.ooooooooooooo"),
    PrayersSongsNovenasRowContent(emoji: "🤲", title: "Orações", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.ooooooooooooo"),
    PrayersSongsNovenasRowContent(emoji: "🤲", title: "Orações", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.ooooooooooooo"),
    PrayersSongsNovenasRowContent(emoji: "🤲", title: "Orações", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.ooooooooooooo")
]
