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

var images = [
    AboutImage(name: "instagramLogo"),
    AboutImage(name: "whatsappLogo"),
    AboutImage(name: "facebookLogo")
]
