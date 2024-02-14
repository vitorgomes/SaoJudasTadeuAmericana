//
//  BackButtonView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 26/01/24.
//

import SwiftUI

// TODO: Not working, need to investigate why. Probably because of the dismiss variable
struct BackButtonView: View {
    
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            HStack {
                Image(systemName: "chevron.backward")
                Text("Voltar")
            }
        }
        .foregroundColor(.black) // TODO: Need to implement color for dark mode
    }
}

#Preview {
    BackButtonView()
}
