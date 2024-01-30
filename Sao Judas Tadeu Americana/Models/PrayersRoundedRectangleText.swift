//
//  PrayersRoundedRectangleText.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 29/01/24.
//

import Foundation

struct PrayersRoundedRectangleText: Identifiable, Equatable {
    var id = UUID()
    var title = String()
    var description = String()
}

// TODO: "Cantos" or "Canções"
var viewTexts = [
    PrayersRoundedRectangleText(title: "Orações", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
    PrayersRoundedRectangleText(title: "Cantos", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
    PrayersRoundedRectangleText(title: "Novenas", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit")
]
