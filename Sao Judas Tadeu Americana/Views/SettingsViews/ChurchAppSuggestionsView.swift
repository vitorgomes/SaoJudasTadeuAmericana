//
//  ChurchSuggestionsView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 03/01/24.
//

import SwiftUI


struct ChurchAppSuggestionsView: View {
    let churchSubjects = ["Igreja", "Missa", "Catequese", "Crisma",  "Eventos", "Outros"] // TODO: Check later a way to display a default value like "Assunto" or blank
    let appSubjects = ["Problema técnico", "Interface", "Performance", "Outros"] // TODO: Check later a way to display a default value like "Assunto" or blank
    let screenSize = UIScreen.main.bounds
    
    // TODO: You can use both on if statements checking isEmpty to disable the next Views
    @State private var selectedSubject = ""
    @State private var suggestionText = "Digite o seu texto aqui"
    
    @State var selectedArea: String
    
    //@Environment (\.dismiss) var dismiss // TODO: If remove the comment starts to ask it on SuggestionsView. Need to check later how to pass it as paramter
    
    var body: some View {
        // TODO: Disable all views bellow the first (Picker). This way will force the user follow step by step of the screen
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in risus ut dui congue venenatis. Maecenas viverra a lectus vitae molestie.") // TODO: Add the real text and remove Lorem Ipsum
            .frame(maxWidth: screenSize.width * 0.85)
        
        VStack {
            // TODO: Maybe add a text describing the screen
            HStack(spacing: 0) {
                Text("**1º:** Selecione o assunto: ") // TODO: Test "1º" with bold style
                
                // TODO: Verify the official article about Picker from Apple. It uses Enum instead of Array
                // TODO:  Add a maxWidth for this but test multine because of "Catequese/Crisma" option
                // TODO: Search to see if there is anyway to keep it empty when user access the page and did not selected anything yet, or a placeholder
                
                Spacer()

                Picker("Por favor escolha o assunto", selection: $selectedSubject) {
                    ForEach(selectedArea == "church" ? churchSubjects : appSubjects, id: \.self) {
                        Text($0)
                    } // TODO: I believe the text "Por favor escolha o assunto" is for voiceOver, need to investigate later
                }
                .accentColor(.blackAndWhite) // TODO: Need to implement color for dark mode
                .background(Color(.applesLightGrayAndDarkGray))
                .clipShape(RoundedRectangle(cornerRadius: 8))
            }.frame(maxWidth: screenSize.width * 0.85, alignment: .leading)
            
            Text("Você selecionou o assunto: \(selectedSubject)") // TODO: Remove later. Test purposes. If i decide to keep it, please make selectedSubject text bold
                .frame(maxWidth: screenSize.width * 0.85, alignment: .leading) // TODO: Test later use this width size in the main VStack
                .padding(.bottom)

            Text("**2º:** Escreva o que você gostaria de sugerir ou comentar sobre o assunto selecionado:") // TODO:  Add a maxWidth for this but test multine
                // TODO: Test "2º" with bold style
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: screenSize.width * 0.85, alignment: .leading)
            
            TextEditor(text: $suggestionText) // TODO: Need to add a placeholder
                .frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.4)
                //.border(Color.black)
                .overlay {
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.blackAndWhite, lineWidth: 1) // TODO: Apparently .stroke modifier is only for iOS 17, need to confirm later and also create an alternative for old versions
                            // TODO: Need to implement color for dark mode
                }
                .foregroundColor(self.suggestionText == "Digite o seu texto aqui" ? .gray : .primary)
                .lineSpacing(4)
                .onAppear {
                    // TODO: While testing show/hide keyboard the View showed a strange behavior that shrink all View contents to adapt the keyboard. Need to investigate it
                    // SHOW keyboard
                    NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { notification in
                        withAnimation {
                            if self.suggestionText == "Digite o seu texto aqui" {
                                self.suggestionText = ""
                            }
                        }
                    }
                    
                    // HIDE keyboard
                    NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { notification in
                        withAnimation {
                            if self.suggestionText == "" {
                                self.suggestionText = "Digite o seu texto aqui"
                            }
                        }
                    }
                }
                .padding()
            
            Button {
                // TODO: Add action to when tapped send an email to Church's email address
//                sendEmail(emailText: suggestionText)
//                EmailSender.shared.sendEmail(subject: selectedSubject, body: suggestionText, to: "vitorgomes_silva@outlook.com") // TODO: Not working at all, need to investigate why
//                self.isShowingMailView.toggle()
//                self.emIsShow.toggle()
            } label: {
                HStack {
                    Image(systemName: "paperplane")
                    Text("Enviar")
                }
            } .frame(maxWidth: screenSize.width * 0.85, minHeight: 35, alignment: .center)
            .foregroundColor(.blackAndWhite) // TODO: Need to implement color for dark mode
            .overlay {
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.blackAndWhite, lineWidth: 1) // TODO: Need to implement color for dark mode
            }
            //---------
            
//            Button(action: {
//                  showMailView.toggle()
//                }) {
//                  Text("Send mail")
//                }
//                .sheet(isPresented: $showMailView) {
//                  MailView(data: $mailData) { result in
//                    print(result)
//                   }
//                }
//            .sheet(isPresented: $isShowingMailView) {
//                        MailView(isShowing: self.$isShowingMailView, result: self.$result)
//            }
//            .sheet(isPresented: $emIsShow) {
//                MailView(result: $emResult, recipient: ["vitorgomes_silva@outlook.com"], subject: "Test email", body: "Test body")
//            }
            
//            Button(action: {self.emIsShow.toggle()})
//                {Text("Email Us")}
//                .sheet(isPresented: $emIsShow) {
//                    MailView(result: $emResult, recipient: ["vitorgomes_silva@outlook.com"], subject: "test", body: "test")
//                }

            // TODO: Add a Thank You message (Popup with fading animation maybe)
            Button {
                // TODO: Add action to when tapped send an email to Church's email address
            } label: {
                HStack {
                    Image(systemName: "chevron.left")
                    Text("Voltar")
                }
            } .frame(maxWidth: screenSize.width * 0.85, minHeight: 35, alignment: .center)
            .foregroundColor(.blackAndWhite) // TODO: Need to implement color for dark mode
            .overlay {
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.blackAndWhite, lineWidth: 1) // TODO: Need to implement color for dark mode
            }
        }
        .navigationTitle("Sugestões para a Igreja")
        .navigationBarTitleDisplayMode(.inline)
        //.padding(.bottom, 16) TODO: Check if it will be necessary
    }
    
//    func sendEmail(emailText: String) {
//        guard MFMailComposeViewController.canSendMail() else {
//            print("Not possible to send email in this device")
//            return
//        }
//        
//        let mailComposeViewController = MFMailComposeViewController()
//        mailComposeViewController.setMessageBody(emailText, isHTML: false)
//        mailComposeViewController.mailComposeDelegate = self
//        
//        UIApplication.shared.windows.first?.rootViewController?.present(mailComposeViewController, animated: false, completion: nil)
//    }
}

#Preview {
    NavigationStack {
        ChurchAppSuggestionsView(selectedArea: "church")
    }
}

//extension ChurchAndAppSuggestionsView: MFMailComposeViewControllerDelegate {
//    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
//        controller.dismiss(animated: false, completion: nil)
//    }
//}
