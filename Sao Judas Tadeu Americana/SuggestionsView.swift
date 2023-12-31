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
            Text("Sugestões, comentários e feedbacks são sempre bem-vindos para aprimorar nosso trabalho. Buscamos constantemente melhorias e inovações, e este é o espaço ideal para isso.")
                .frame(maxWidth: screenSize.width * 0.85) // TODO: Probably will need to add a maxHeight too
            
            Spacer()
            
            Text("Deseja fazer sugestões sobre:")
            
            Spacer()
            
            Button {
                // TODO: Add action to when tapped send to About the App screen
            } label: {
                Text("A Igreja")
            } .frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.25)
                .foregroundColor(.black)
                //.border(Color.black)
                //.background(RoundedRectangle(cornerRadius: 15, style: .continuous).stroke(.black, lineWidth: 1)) // TODO: Apparently .stroke modifier is only for iOS 17, need to confirm later and also create an alternative for old versions
                // This modifier achieves the same result as above
                .overlay {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.black, lineWidth: 1)
                }
            
            Spacer()
            
            Text("Ou")
            
            Spacer()

            Button {
                // TODO: Add action to when tapped send to About the App screen
            } label: {
                Text("O App")
            } .frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.25)
            .foregroundColor(.black)
                .border(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
        }
    }
}

#Preview {
    SuggestionsView()
}

// This might be useful for older versions
/*
 extension View {
 func border(_ color: Color, width: CGFloat, cornerRadius: CGFloat) -> some View {
 overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(color, lineWidth: width))
 }
 }
 */
