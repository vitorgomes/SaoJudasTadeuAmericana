//
//  NotificationsView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 05/02/24.
//

import SwiftUI

struct NotificationsView: View {
    
    let screenSize = UIScreen.main.bounds
    let massesTimeInterval = [2, 1, 30, 15, 5]
    @State var selectedMassesTimeInterval = Int()
    
    @State private var massesNotifications = true
    
    var body: some View {
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies laoreet pretium. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean eget lectus nibh.")
        
        Form {
            Section {
                Toggle("Notificar antes do início", isOn: $massesNotifications) // TODO: Change tint color
//                Picker("Quanto tempo antes", selection: $selectedMassesTimeInterval) {
//                    ForEach(massesTimeInterval, id: \.self) {
//                        Text($0)
//                    }
//                }
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            } header: {
                Text("Missas")
            } footer: {
                Text("oooooooooooooo") // TODO: Check the kind of information Apple does usually uses
            }
            
            Section(header: Text("Novenas")) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            
            Section(header: Text("Salmos")) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
        .navigationTitle("Notificações")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        NotificationsView()
    }
}
