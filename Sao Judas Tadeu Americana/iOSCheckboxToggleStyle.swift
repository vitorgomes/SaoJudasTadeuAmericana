//
//  iOSCheckboxToggleStyle.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 05/01/24.
//

import SwiftUI

// Reference: https://sarunw.com/posts/swiftui-checkbox/
struct iOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        // 1 Use a button as a body of new style.
        Button(action: {

            // 2 When the button is tapped, toggle the isOn configuration variable, configuration.isOn.toggle().
            configuration.isOn.toggle()

        }, label: {
            HStack {
                // 3 Use an SF Symbol image to represent the selected and unselected state of the checkbox.
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")

                configuration.label
            }
        })
    }
}
