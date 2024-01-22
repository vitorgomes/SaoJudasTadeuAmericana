//
//  PrayersView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 28/12/23.
//

import SwiftUI

// TODO: Talk with priest about the screen name, because if it has a navigation tittle it will be Orações, but there is already a TextView with Orações title
struct PrayersView: View {
    
    let screenSize = UIScreen.main.bounds
    @State private var ongoingNovena = false // Testing variable as private
    
    var body: some View {
        VStack { // TODO: Add font styles
            // TODO: Add maxWidth too
            VStack(alignment: .leading) { // TODO: Create a function to reduce copied code
                // TODO: Add spacing between these both TextViews
                Text("Orações")
                    .font(.title)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit") // TODO: Replace Lorem Ipsum text with a explanation of the button
            }.frame(maxHeight: screenSize.height * 0.25) // TODO: Test height later when introduce NavigationStack
            .border(Color.black) // TODO: Need to implement color for dark mode
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous)) // TODO: Investigate why corners are cutting the border
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text("Cantos")
                    .font(.title)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit")
            }.frame(maxHeight: screenSize.height * 0.25)
            .border(Color.black) // TODO: Need to implement color for dark mode
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text("Novenas")
                    .font(.title)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit")
            }.frame(maxHeight: screenSize.height * 0.25)
            .overlay(alignment: .topTrailing, content: {
                // TODO: Search if there is any to assign behaviors without the View, like you create Image flame and padding once outside the if and inside if assign the behaviors
                if ongoingNovena {
                    Image(systemName: "flame.fill")
                        .foregroundColor(.orange)
                        .symbolEffect(.pulse)
                        .padding()
                } else {
                    Image(systemName: "flame.fill")
                        .foregroundColor(.gray)
                        .padding()
                }
            })
            .border(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
        }
    }
}

#Preview {
    PrayersView()
}
