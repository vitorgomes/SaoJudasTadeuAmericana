//
//  SjtHistoryImage.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 23/01/24.
//

import Foundation

struct SjtHistoryImage: Identifiable {
    var id = UUID()
    var name = String()
}


// TODO: Probably there is a way to add 1, 2, 3... through the ForEach. Need to search for something related to "ForEach range"
// TODO: This is responsability of ViewModel, need to remove it when implement MVVM
var imagesGroup1 = [
    SjtHistoryImage(name: "sjtHistory1"),
    SjtHistoryImage(name: "sjtHistory2")
]

var imagesGroup2 = [
    SjtHistoryImage(name: "sjtHistory3"),
    SjtHistoryImage(name: "sjtHistory4")
]
