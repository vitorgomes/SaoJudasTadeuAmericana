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
        VStack(alignment: .leading) {
            Text(prayersRoundedRectangleText.title)
                .font(.title)
                .padding(.leading)
            Text(prayersRoundedRectangleText.description) // TODO: Replace Lorem Ipsum text with a explanation of the button
                .paddingLeadingAndTrailing()
        }.frame(maxHeight: screenSize.height * 0.22) // TODO: Test height later when introduce NavigationStack
        // TODO: Check if the View width should be equal to the List View of HomeView. Stay in mind that you plan to implement de swipe back gesture in the leadging edge of the screen
            .border(Color.black) // TODO: Need to implement color for dark mode
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous)) // TODO: Investigate why corners are cutting the border
    }
}

// Use for test purposes
//#Preview {
//    PrayersRoundedRectangleView(prayersRoundedRectangleText: viewTexts.first!)
//}

// TODO: Move these two to another file
struct PaddingLeadingAndTrailing: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.leading)
            .padding(.trailing)
    }
}

extension View {
    func paddingLeadingAndTrailing() -> some View {
        modifier(PaddingLeadingAndTrailing())
    }
}
