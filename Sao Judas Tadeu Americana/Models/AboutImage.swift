//
//  AboutImage.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 25/01/24.
//

import Foundation

struct AboutImage: Identifiable {
    var id = UUID()
    var name = String()
}

// TODO: This is responsability of ViewModel, need to remove it when implement MVVM
var images = [
    AboutImage(name: "instagramLogo"),
    AboutImage(name: "whatsappLogo"),
    AboutImage(name: "facebookLogo")
]
