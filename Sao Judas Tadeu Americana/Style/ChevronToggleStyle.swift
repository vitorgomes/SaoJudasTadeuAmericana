//
//  ChevronToggleStyle.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 31/01/24.
//

import SwiftUI

struct ChevronToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }, label: {
            HStack {
                Image(systemName: configuration.isOn ? "chevron.down" : "chevron.up")
                configuration.label
            }
        })
    }
}
