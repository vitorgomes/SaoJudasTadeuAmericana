//
//  Prayer.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 11/02/24.
//

import Foundation
import SwiftData

@Model
class Prayer {
    var name: String
    var lyric: String
    
    init(name: String = "", lyric: String = "") {
        self.name = name
        self.lyric = lyric
    }
}
