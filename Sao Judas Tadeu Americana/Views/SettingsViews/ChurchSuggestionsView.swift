//
//  ChurchSuggestionsView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 03/01/24.
//

import SwiftUI

struct ChurchSuggestionsView: View {
    // TODO: Can reuse this screen for App Suggestions. If so, file name must be renamed
    var subjects = ["Igreja", "Missa", "Catequese", "Crisma",  "Eventos", "Outros"]
    let screenSize = UIScreen.main.bounds
    
    // TODO: You can use both on if statements checking isEmpty to disable the next Views
    @State private var selectedSubject = ""
    @State private var suggestionText = ""
    
    var body: some View {
        // TODO: Disable all views bellow the first (Picker). This way will force the user follow step by step of the screen
        VStack {
            // TODO: Maybe add a text describing the screen
            HStack(spacing: 0) {
                Text("1º: Selecione o assunto: ") // TODO: Test "1º" with bold style
                
                // TODO: Verify the official article about Picker from Apple. It uses Enum instead of Array
                // TODO:  Add a maxWidth for this but test multine because of "Catequese/Crisma" option
                Picker("Por favor escolha o assunto", selection: $selectedSubject) {
                    ForEach(subjects, id: \.self) {
                        Text($0)
                    }
                }.accentColor(.black) // TODO: Need to implement color for dark mode
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black, lineWidth: 1) // TODO: Need to implement color for dark mode
                    } // TODO: Apparently .stroke modifier is only for iOS 17, need to confirm later and also create an alternative for old versions
            }.frame(maxWidth: screenSize.width * 0.85, alignment: .leading)
            
            Text("Você selecionou o assunto: \(selectedSubject)") // TODO: Remove later. Test purposes. If i decide to keep it, please make selectedSubject text bold
                .frame(maxWidth: screenSize.width * 0.85, alignment: .leading)
                .padding(.bottom)
            
            Text("2º: Escreva o que você gostaria de sugerir ou comentar sobre o assunto selecionado:") // TODO:  Add a maxWidth for this but test multine
                // TODO: Test "2º" with bold style
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: screenSize.width * 0.85, alignment: .leading)
            
            TextEditor(text: $suggestionText) // TODO: Need to add a placeholder
                .frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.4)
                //.border(Color.black)
                .overlay {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.black, lineWidth: 1) // TODO: Apparently .stroke modifier is only for iOS 17, need to confirm later and also create an alternative for old versions
                            // TODO: Need to implement color for dark mode
                }
                .lineSpacing(5)
                .padding()
            
            Button {
                // TODO: Add action to when tapped send an email to Church's email address
            } label: {
                Text("Enviar")
            } .frame(maxWidth: screenSize.width * 0.45, minHeight: 35, alignment: .center)
            .foregroundColor(.black) // TODO: Need to implement color for dark mode
            .overlay {
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.black, lineWidth: 1) // TODO: Need to implement color for dark mode
            }
            // TODO: Add a Thank You message (Popup with fading animation maybe)
        }
    }
}

#Preview {
    ChurchSuggestionsView()
}
