//
//  PrayersRoundedRectangleText.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 29/01/24.
//

import Foundation

struct PrayersRoundedRectangleText: Identifiable, Equatable {
    var id = UUID()
    var emoji = String()
    var title = String()
    var description = String()
}

// TODO: "Cantos" or "Canções"
// TODO: This is responsability of ViewModel, need to remove it when implement MVVM
var viewTexts = [
    PrayersRoundedRectangleText(emoji: "🤲", title: "Orações", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
    PrayersRoundedRectangleText(emoji: "🎵", title: "Cantos", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
    PrayersRoundedRectangleText(emoji: "🕯️", title: "Novenas", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit")
]
