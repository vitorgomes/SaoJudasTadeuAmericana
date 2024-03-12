//
//  NotificationsView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 05/02/24.
//

import SwiftUI

struct NotificationsView: View {
    
    let screenSize = UIScreen.main.bounds
    
    // Masses constants and variables
    let massesTimeInterval = ["2 horas", "1 hora", "30 minutos", "15 minutos", "5 minutos"]
    let massesNumberOfNotifications = ["1x", "2x", "3x"]
    @State private var massesNotifications = true
    @State private var selectedMassesTimeInterval = ""
    @State private var selectedMassesNumberOfNotifications = ""
    
    // Novenas variables
    @State private var novenasNotifications = true
    @State private var selectedNovenaHour = Date.now
    
    // Psalm constants and variables
    let psalmsPeriodNotifications = ["Aleatório", "Manhã", "Tarde", "Noite"]
    @State private var psalmsNotifications = true
    @State private var selectedpsalmsPeriodNotifications = ""
    
    // Silent mode contants and variables
    @State private var silentModeNotifications = true
    @State private var silentModeOn = true
    @State private var silentModeOff = true
    
    var body: some View {
        ScrollView { // TODO: Maybe it will need to be a ScrollView, depending of the description text lenght
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies laoreet pretium. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean eget lectus nibh.")
                .padding(.bottom, 8)
            
            // Masses
            VStack {
                HStack {
                    Text("Missas")
                        .font(.title)
                    Spacer()
                }
                .padding([.leading, .top], 16) // TODO: Refact like paddingLeadingAndTrailing()
                
                Toggle("Notificar antes do início?", isOn: $massesNotifications) // TODO: Check with designers if they usually keep "?" in this kind of situation
                    .paddingLeadingAndTrailing()
                
                HStack {
                    Text("Quanto tempo antes?")
                        .foregroundStyle(massesNotifications ? .blackAndWhite : .gray)
                        .disabled(massesNotifications == false)
                    
                    Spacer()
                    
                    Picker("Quanto tempo antes", selection: $selectedMassesTimeInterval) {
                        ForEach(massesTimeInterval, id: \.self) {
                            Text($0)
                        }
                    } // TODO: Modify "Quanto tempo antes" inside Picker, this option only works inside a List/Form
                    // TODO: Change tint color
                    // TODO: Add border
                    .disabled(massesNotifications == false)
                    .accentColor(.blackAndWhite)
                    .background(Color(.applesLightGrayAndDarkGray))
                    //.background(Color(.lightGray).opacity(0.2)) // TODO: Need to review Darkmode later
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                .paddingLeadingAndTrailing() // TODO: Need to adjust same as above Toggle
                
                VStack(alignment: .leading) {
                    Text("Quantas vezes notificar?")
                        .foregroundStyle(massesNotifications ? .blackAndWhite : .gray)
                    
                    Picker("Quantas vezes?", selection: $selectedMassesNumberOfNotifications) {
                        ForEach(massesNumberOfNotifications, id: \.self) {
                            Text($0)
                            // TODO: Make "1x" the default value
                        }
                    } // TODO: Modify "Quantas vezes?" inside Picker, this option only works inside a List/Form
                    .disabled(massesNotifications == false)
                    .pickerStyle(.segmented)
                }
                .paddingLeadingAndTrailing()
                .padding(.bottom, 16)
            }
            .border(Color.black) // TODO: Need to implement color for dark mode
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            
            // Novenas
            VStack {
                HStack {
                    Text("Novenas")
                        .font(.title)
                    Spacer()
                }
                .padding([.leading, .top], 16)
                
                Toggle("Notificar diariamente após início?", isOn: $novenasNotifications) // TODO: Shrink the text, if not possible add multiline possibility so the text can break in multilines
                    .paddingLeadingAndTrailing()
                
                DatePicker("Horário", selection: $selectedNovenaHour, displayedComponents: .hourAndMinute)
                    .disabled(novenasNotifications == false)
                    .opacity(novenasNotifications ? 1.0 : 0.5)
                    .foregroundStyle(novenasNotifications ? .blackAndWhite : .gray)
                    .tint(.blackAndWhite)
                    .paddingLeadingAndTrailing()
                    .padding(.bottom, 16)
            }
            .border(Color.black) // TODO: Need to implement color for dark mode
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            
            // Psalms
            VStack {
                HStack {
                    Text("Salmos")
                        .font(.title)
                    Spacer()
                }
                .padding([.leading, .top], 16)
                
                Toggle("Notificar diariamente?", isOn: $psalmsNotifications)
                    .paddingLeadingAndTrailing()
                
                VStack(alignment: .leading) {
                    Text("Período?")
                        .foregroundStyle(psalmsNotifications ? .blackAndWhite : .gray)
                    
                    Picker("Quantas vezes?", selection: $selectedpsalmsPeriodNotifications) {
                        ForEach(psalmsPeriodNotifications, id: \.self) {
                            Text($0)
                            // TODO: Make "1x" the default value
                        }
                    } // TODO: Modify "Quantas vezes?" inside Picker, this option only works inside a List/Form
                    .disabled(psalmsNotifications == false)
                    .pickerStyle(.segmented)
                }
                .paddingLeadingAndTrailing()
                .padding(.bottom, 16)
            }
            .border(Color.black) // TODO: Need to implement color for dark mode
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            
            // Silent and Lower Volume
            VStack {
                HStack {
                    Text("Modo Silencioso")
                        .font(.title)
                    Spacer()
                }
                .padding([.leading, .top], 16)
                
                Toggle("Notificar sobre Modo Silencioso?", isOn: $silentModeNotifications)
                    .paddingLeadingAndTrailing()
                
                Toggle("Notificar quando ativo?", isOn: $silentModeOn)
                    .disabled(silentModeNotifications == false)
                    .paddingLeadingAndTrailing()
                
                Toggle("Notificar quando desativado?", isOn: $silentModeOff)
                    .disabled(silentModeNotifications == false)
                    .paddingLeadingAndTrailing()
                    .padding(.bottom, 16)
            }
            .border(Color.black) // TODO: Need to implement color for dark mode
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
        }
        .frame(width: screenSize.width * 0.85)
        .navigationTitle("Notificações")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        NotificationsView()
    }
}
