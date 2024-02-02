//
//  SettingsView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 02/01/24.
//

import SwiftUI

struct SettingsView: View {
    
    let screenSize = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            // TODO: Create a function to replace repeated code in the buttons
//            Button {
//                // TODO: Add action to when tapped send to About the App screen
//            } label: {
//                Group {
//                    // TODO: Remember to add this tatic on PrayersView because they are not button there and it need to be changed
//                    Text("Aparência\n")
//                        .font(.title)
//                    +
//                    Text("Troque o tema de cores")
//                        .fontWeight(.light)
//                } .multilineTextAlignment(.leading) // TODO: Verify if it only works on iOS 16
//                    .padding()
//            }.frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.25, alignment: .leading)
//            .foregroundColor(.black) // TODO: Need to implement color for dark mode
//            .border(Color.black) // TODO: Need to implement color for dark mode
//            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
//            .overlay(alignment: .topTrailing) {
//                Image(systemName: "slider.horizontal.3")
//                    .padding()
//            }
            
            HStack {
                Image(systemName: "slider.horizontal.3")
                    .font(.title)
                    .background(Color(.blue))
                VStack(alignment: .leading) {
                    Text("Aparência")
                        .font(.title)
                        .padding(.leading)
                    Text("Troque o tema de cores") // TODO: Depending on text size it breaks all the alignment, need to investigate it
                        .paddingLeadingAndTrailing()
                }.background(Color(.blue))
            }
            .frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.22)
            .border(Color.black) // TODO: Need to implement color for dark mode
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            
            Spacer()
            
            HStack {
                Image(systemName: "app.badge")
                    .font(.title)
                    .padding()
                    .background(Color(.blue))
                VStack(alignment: .leading) {
                    Text("Notificações")
                        .font(.title)
                        .padding(.leading)
                    Text("Ajuste a quantidade e frequência")
                        .paddingLeadingAndTrailing()
                }.background(Color(.blue))
            }
            .frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.22)
            .border(Color.black) // TODO: Need to implement color for dark mode
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            
            Spacer()
            
            HStack {
                Image(systemName: "star.fill")
                    .font(.title)
                    .padding()
                    .background(Color(.blue))
                VStack(alignment: .leading) {
                    Text("Sugestões")
                        .font(.title)
                        .padding(.leading)
                    Text("Compartilhe sua opinião")
                        .paddingLeadingAndTrailing()
                }.background(Color(.blue))
            }
            .frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.22)
            .border(Color.black) // TODO: Need to implement color for dark mode
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            
            Spacer()
            
            HStack {
                Image(systemName: "questionmark")
                    .font(.title)
                    .padding()
                    .background(Color(.blue))
                VStack(alignment: .leading) {
                    Text("Sobre")
                        .font(.title)
                        .padding(.leading)
                    Text("Saiba mais sobre o aplicativo")
                        .paddingLeadingAndTrailing()
                }.background(Color(.blue))
            }
            .frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.22)
            .border(Color.black) // TODO: Need to implement color for dark mode
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            
//            Spacer()
//            
//            Button {
//                // TODO: Add action to when tapped send to About the App screen
//            } label: {
//                Group {
//                    Text("Notificações\n")
//                        .font(.title)
//                    +
//                    Text("Ajuste a quantidade e frequência")
//                        .fontWeight(.light)
//                } .multilineTextAlignment(.leading)
//                    .padding()
//            } .frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.25, alignment: .leading)
//            .foregroundColor(.black)
//            .border(Color.black)
//            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
//            .overlay(alignment: .topTrailing) {
//                Image(systemName: "app.badge")
//                    .padding()
//            }
//            // TODO: Test .shadow(radius: 10)
            
//            Spacer()
//            
//            Button {
//                // TODO: Add action to when tapped send to About the App screen
//            } label: {
//                Group {
//                    Text("Sugestões\n")
//                        .font(.title)
//                    +
//                    Text("Compartilhe sua opinião")
//                        .fontWeight(.light)
//                } .multilineTextAlignment(.leading)
//                    .padding()
//            }.frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.25, alignment: .leading)
//            .foregroundColor(.black) // TODO: Need to implement color for dark mode
//            .border(Color.black) // TODO: Need to implement color for dark mode
//            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
//            .overlay(alignment: .topTrailing) {
//                Image(systemName: "star")
//                    .padding()
//            }
//            
//            Spacer()
            
//            Button {
//                // TODO: Add action to when tapped send to About the App screen
//            } label: {
//                Group {
//                    Text("Sobre\n")
//                        .font(.title)
//                    +
//                    Text("Saiba mais sobre o aplicativo")
//                        .fontWeight(.light)
//                } .multilineTextAlignment(.leading)
//                    .padding()
//            } .frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.25, alignment: .leading)
//            .foregroundColor(.black)
//            .border(Color.black)
//            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
//            .padding(.bottom, 8) // TODO: Testing with TabView. Review the size and compare with the other buttons, it seems that button shrink a little compared to others when using padding
//            .overlay(alignment: .topTrailing) {
//                Image(systemName: "questionmark")
//                    .padding()
//            }
        }
        .navigationTitle("Configurações")
        .padding(.bottom, 16)
    }
}

#Preview {
    NavigationStack {
        SettingsView()
    }
}
