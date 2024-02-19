//
//  SettingsRowText.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 03/02/24.
//

import Foundation

struct SettingsRowContent: Identifiable, Equatable {
    var id = UUID()
    var sfSymbol = String()
    var title = String()
    var description = String()
}

// TODO: I believe the name need to be changed
// TODO: This is responsability of ViewModel, need to remove it when implement MVVM
var rowContents = [
    SettingsRowContent(sfSymbol: "bell.badge.fill", title: "Notificações", description: "Ajuste a quantidade e frequência"),
    SettingsRowContent(sfSymbol: "star.fill", title: "Sugestões", description: "Compartilhe sua opinião"),
    SettingsRowContent(sfSymbol: "questionmark", title: "Sobre", description: "Saiba mais sobre o aplicativo")
]
