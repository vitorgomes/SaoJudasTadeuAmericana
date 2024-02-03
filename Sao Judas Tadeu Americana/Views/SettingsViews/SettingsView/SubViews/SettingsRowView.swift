//
//  SettingsRowView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 03/02/24.
//

import SwiftUI

struct SettingsRowView: View {
    
    let screenSize = UIScreen.main.bounds
    
    var settingsRowContent: SettingsRowContent
    
    var body: some View {
        HStack(spacing: 0) {
            Image(systemName: settingsRowContent.sfSymbol)
                .font(.title)
                .background(Color(.blue)) // TODO: Test purposes, remove later
                .paddingLeadingAndTrailing()
            VStack(alignment: .leading) {
                Text(settingsRowContent.title)
                    .font(.title)
                Text(settingsRowContent.description)
                    .padding(.trailing, 16)
            }
        }
        .frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.22, alignment: .leading)
        .border(Color.black) // TODO: Need to implement color for dark mode
        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
        // TODO: Test .shadow(radius: 10)
    }
}

// Use for test purposes
#Preview {
    SettingsRowView(settingsRowContent: rowContents.first!)
}
