//
//  AboutAppView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 12/02/24.
//

import SwiftUI

struct AboutAppView: View {
    var body: some View {
        List {
            // TODO: Repeated View. Find a way to create a custom View where you can insert content between two Spacers
            HStack {
                Spacer()
                
                Image("sjtFace") // TODO: Change it to the App Icon image
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 150, height: 150) // TODO: Add dynamic size, or maybe a fixed one, but with a minimum size
                
                Spacer()
            }
            
            HStack { // TODO: Getting half separator, need to investigate
                Spacer ()
                
                // MARK: Version
                Text("Versão 1.0.0")
                    .fontWeight(.thin) // TODO: Review if it is a good idea make it thin
                    .font(.system(size: 24))
                
                Spacer ()
            }
            
            // MARK: Description
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies laoreet pretium. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean eget lectus nibh. Donec feugiat hendrerit lorem. Donec luctus libero a rutrum molestie. Quisque dictum euismod eros, sit amet luctus neque dignissim a. Fusce feugiat ut felis vitae congue.")
            
            HStack {
                Spacer()
                
                Text("🙏")
                    .font(.system(size: 56))
                
                Spacer()
            }
            .listRowBackground(Color(.clear))
        }
        .navigationTitle("Sobre o Aplicativo")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        AboutAppView()
    }
}
