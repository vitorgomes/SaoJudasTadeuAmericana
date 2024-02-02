//
//  PrayersRoundedRectangleView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 29/01/24.
//

import SwiftUI

struct PrayersRoundedRectangleView: View {
    
    var prayersRoundedRectangleText: PrayersRoundedRectangleText
    let screenSize = UIScreen.main.bounds // TODO: Search a way to transform this a single variable/constant you can use between screens
    
    var body: some View {
        HStack {
            Text(prayersRoundedRectangleText.emoji)
                .font(.title)
                .padding(.trailing, 8)
            VStack(alignment: .leading) {
                Text(prayersRoundedRectangleText.title)
                    .font(.title)
                    .padding(.leading)
                Text(prayersRoundedRectangleText.description) // TODO: Replace Lorem Ipsum text with a explanation of the button
                // TODO: Depending on text size it breaks all the alignment, need to investigate it
                    .paddingLeadingAndTrailing()
            }
        }
        .frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.22) // TODO: Test height later when introduce NavigationStack
        // TODO: Check if the View width should be equal to the List View of HomeView. Stay in mind that you plan to implement de swipe back gesture in the leadging edge of the screen
            .border(Color.black) // TODO: Need to implement color for dark mode
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous)) // TODO: Investigate why corners are cutting the border
        // TODO: Add a blink animation like a button
    }
}

// Use for test purposes
#Preview {
    PrayersRoundedRectangleView(prayersRoundedRectangleText: viewTexts.first!)
}


