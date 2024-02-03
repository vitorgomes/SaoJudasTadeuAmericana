//
//  HomeRowText.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 15/01/24.
//

import Foundation
import SwiftUI

// TODO: It is not working on a elegant way, but it is working. Need to review for a better code. Also HomeRowText
struct HomeRowText: Identifiable {
    var id = UUID()
    var title = String()
    var content = String()
    var sjtHistoryView: () -> AnyView
    var aboutView: () -> AnyView
    var showSjtHistory: Bool
    
    init(title: String = String(), content: String = String(), sjtHistoryView: @escaping () -> AnyView, aboutView: @escaping () -> AnyView, showSjtHistory: Bool) {
        self.title = title
        self.content = content
        self.sjtHistoryView = sjtHistoryView
        self.aboutView = aboutView
        self.showSjtHistory = showSjtHistory
    }
}

// TODO: I believe the name need to be changed
var rowTexts = [
    HomeRowText(title: "História de São Judas Tadeu", 
                content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in risus ut dui congue venenatis. Maecenas viverra a lectus vitae molestie. Aliquam aliquet vestibulum congue. Aliquam eu elit quis sem commodo tristique sit amet quis quam. Donec tincidunt magna risus, ac cursus massa placerat eu" + HomeConstants.threeDots,
                sjtHistoryView: {AnyView(SjtHistoryView())},
                aboutView: {AnyView(AboutView())}, 
                showSjtHistory: true),
    HomeRowText(title: "Sobre a Paróquia",
                content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in risus ut dui congue venenatis. Maecenas viverra a lectus vitae molestie. Aliquam aliquet vestibulum congue. Aliquam eu elit quis sem commodo tristique sit amet quis quam. Donec tincidunt magna risus, ac cursus massa placerat eu" + HomeConstants.threeDots,
                sjtHistoryView: {AnyView(SjtHistoryView())}, 
                aboutView: {AnyView(AboutView())}, 
                showSjtHistory: false)
]
