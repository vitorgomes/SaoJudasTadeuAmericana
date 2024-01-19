//
//  HomeRowView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 15/01/24.
//

import SwiftUI

struct HomeRowView: View {
    
    var homeRowText: HomeRowText
    
    var body: some View {
        VStack {
//            Text(homeRowText.title)
//                .font(.title)
//            NavigationLink(destination: SjtHistoryView()) { // TODO: Need to refactor here too, because both Views are sending to SjtHistoryView()
//                Text(homeRowText.content) // TODO: Add a fix number of allowed characters to display in the screen.
//                // TODO: Remove the Lorem ipsum with the real text
//                +
//                Text(HomeConstants.continueReading)
//                    .fontWeight(.bold) // TODO: Test another colors like gray to see if visually is better
//            }
            
            // TODO: It is not working on a elegant way, but it is working. Need to review for a better code. Also HomeRowText
            NavigationLink(destination: VStack {
                if homeRowText.showSjtHistory {
                    homeRowText.sjtHistoryView()
                } else {
                    homeRowText.aboutView()
                }
            }) {
                VStack(alignment: .leading, spacing: 24) {
                    Text(homeRowText.title)
                        .font(.title)
                    Text(homeRowText.content)
                    +
                    Text(HomeConstants.continueReading)
                        .fontWeight(.bold)
                }
            }
        }
        .padding(20) // TODO: Remove fixed size
    }
}

// Use for test purposes
//#Preview {
//    HomeRowView(homeRowText: rowTexts.first!)
//}
