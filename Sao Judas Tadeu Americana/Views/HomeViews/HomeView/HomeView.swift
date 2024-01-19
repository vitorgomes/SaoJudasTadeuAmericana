//
//  ContentView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 23/12/23.
//

import SwiftUI

// TODO: Change the name of the screen to something like HomeView or MainView
struct HomeView: View {
    
    var body: some View {
        // TODO: I believe the List is ignoring safe area, need to check this
        List {
            HStack(alignment: .center, spacing: 20) {
                Image("sjtFace") // TODO: Need to polish the image
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 120, height: 120, alignment: .leading) // TODO: Remove fixed size, but the variable size should match this size proportionally
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam porttitor") // TODO: Remove the Lorem ipsum with the real text
                    .fontWeight(.light)
            }
                .padding(20) // TODO: Remove fixed size
                // TODO: List Separator is half hiddent. Need to investigate
            
            ForEach(rowTexts) { item in
                HomeRowView(homeRowText: item)
            }
        }
            //.navigationTitle("Início")
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
}
