//
//  HomeRowText.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 15/01/24.
//

import Foundation
import SwiftUI

struct HomeRowText: Identifiable {
    var id = UUID()
    var title = String()
    var content = String()
}

var rowTexts = [
    HomeRowText(title: "História de São Judas Tadeu", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in risus ut dui congue venenatis. Maecenas viverra a lectus vitae molestie. Aliquam aliquet vestibulum congue. Aliquam eu elit quis sem commodo tristique sit amet quis quam. Donec tincidunt magna risus, ac cursus massa placerat eu" + HomeConstants.threeDots),
    HomeRowText(title: "Sobre a Paróquia", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in risus ut dui congue venenatis. Maecenas viverra a lectus vitae molestie. Aliquam aliquet vestibulum congue. Aliquam eu elit quis sem commodo tristique sit amet quis quam. Donec tincidunt magna risus, ac cursus massa placerat eu" + HomeConstants.threeDots)
]
