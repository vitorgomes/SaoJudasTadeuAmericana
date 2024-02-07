//
//  SuggestionsView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 03/01/24.
//

import SwiftUI

struct SuggestionsView: View {
    
    let screenSize = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Sugestões, comentários e feedbacks são sempre bem-vindos para aprimorar nosso trabalho. Buscamos constantemente melhorias e inovações, e aqui é o espaço ideal para isso.")
                .frame(maxWidth: screenSize.width * 0.85) // TODO: Probably will need to add a maxHeight too
            
            Spacer()
            
            Text("Deseja fazer sugestões sobre:")
                .frame(alignment: .center)
            
            Spacer()
            
            Button {
                // TODO: Add action to when tapped send to About the App screen
            } label: {
                Text("A Igreja")
            } .frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.25)
                .foregroundColor(.black) // TODO: Need to implement color for dark mode
                //.border(Color.black)
                //.background(RoundedRectangle(cornerRadius: 15, style: .continuous).stroke(.black, lineWidth: 1)) // TODO: Apparently .stroke modifier is only for iOS 17, need to confirm later and also create an alternative for old versions
                // This modifier achieves the same result as above
                .overlay {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.black, lineWidth: 1) // TODO: Need to implement color for dark mode
                }
            
            Spacer()
            
            Text("Ou")
                .frame(alignment: .center)
            
            Spacer()

            Button {
                // TODO: Add action to when tapped send to About the App screen
            } label: {
                Text("O App")
            } .frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.25)
            .foregroundColor(.black) // TODO: Need to implement color for dark mode
            .border(Color.black) // TODO: Need to implement color for dark mode
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
        }
        .navigationTitle("Sugestões")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.bottom, 16)
    }
}

#Preview {
    NavigationStack {
        SuggestionsView()
    }
}

// This might be useful for older versions
/*
 extension View {
 func border(_ color: Color, width: CGFloat, cornerRadius: CGFloat) -> some View {
 overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(color, lineWidth: width))
 }
 }
 */
