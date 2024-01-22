//
//  ContentView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 23/12/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        // TODO: I believe the List is ignoring safe area, need to check this
        List {
            HStack(alignment: .center, spacing: 20) {
                Image("sjtFace") // TODO: Need to polish the image
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(maxWidth: 120, maxHeight: 120, alignment: .leading) // It is possible use dynamic value but UIScreen.main.bounds gets the size of screen (that makes the TextView bellow occupy part of sjtFace image space). To get the size of the view you need to use GeometryReader, but i believe it is not necessary for a simple projetct like this
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam porttitor") // TODO: Remove the Lorem ipsum with the real text
                    .fontWeight(.light)
            }
            .padding(16)
            // TODO: List Separator is half hiddent. Need to investigate
            
            ForEach(rowTexts) { item in
                HomeRowView(homeRowText: item)
            }
        }
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
}
