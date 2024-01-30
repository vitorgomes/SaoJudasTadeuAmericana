//
//  PrayersView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 28/12/23.
//

import SwiftUI

// TODO: Talk with priest about the screen name, because if it has a navigation tittle it will be Orações, but there is already a TextView with Orações title
struct PrayersView: View {
    
    var body: some View {
        VStack { // TODO: Add font styles
            // TODO: Add maxWidth too
            ForEach(viewTexts) { item in
                if(item == viewTexts.last) {
                    PrayersRoundedRectangleView(prayersRoundedRectangleText: item)
                        .overlayedPulsingFireAnimation()
                } else {
                    PrayersRoundedRectangleView(prayersRoundedRectangleText: item)
                }
                Spacer()
            }
        }
        .navigationTitle("Orações")
        .padding(.bottom, 16)
    }
}

#Preview {
    NavigationStack {
        PrayersView()
    }
}

struct OverlayedPulsingFireAnimation: ViewModifier {
    
    @State var ongoingNovena = false
    
    func body(content: Content) -> some View {
        content
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
    }
}

extension View {
    func overlayedPulsingFireAnimation() -> some View {
        modifier(OverlayedPulsingFireAnimation())
    }
}
