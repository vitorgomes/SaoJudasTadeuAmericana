//
//  HomeRowText.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 15/01/24.
//

import Foundation

struct HomeRowText: Identifiable {
    var id = UUID()
    var title = String()
    var content = String()
}

var rowTexts = [
    HomeRowText(title: HomeConstants.sjtHistoryTitle, content: HomeConstants.sjtHistoryContent + HomeConstants.threeDots),
    HomeRowText(title: HomeConstants.churchAboutTitle, content: HomeConstants.churchAboutContent + HomeConstants.threeDots)
]
