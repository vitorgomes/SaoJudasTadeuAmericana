//
//  ChurchSuggestionsView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 03/01/24.
//

import SwiftUI

struct ChurchSuggestionsView: View {
    // TODO: Slipt "Catequese" and "Crisma"
    var subjects = ["Igreja", "Missas", "Catequese/Crisma", "Eventos", "Outros"]
    @State private var selectedSubject = ""
    
    var body: some View {
        // TODO: Disable all views bellow the first (Picker). This way will force the user follow step by step of the screen
        VStack {
            HStack(spacing: 0) {
                Text("1º: Selecione o assunto:")
                
                // TODO: Verify the official article about Picker from Apple
                Picker("Por favor escolha o assunto", selection: $selectedSubject) {
                    ForEach(subjects, id: \.self) {
                        Text($0)
                    }
                }
            }
            
            Text("Você selecionou o assunto: \(selectedSubject)") // TODO: Remove later. Test purposes
        }
    }
}

#Preview {
    ChurchSuggestionsView()
}
