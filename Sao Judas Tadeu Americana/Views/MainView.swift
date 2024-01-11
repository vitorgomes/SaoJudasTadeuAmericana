//
//  MainView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 11/01/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Início", systemImage: "house.fill")
                }
            
            PrayersView()
                .tabItem {
                    Label("Orações", systemImage: "quote.closing")
                }
            
            TitheView()
                .tabItem {
                    Label("Dízimo", systemImage: "hands.and.sparkles.fill")
                }
            
            SettingsView()
                .tabItem {
                    Label("Configurações", systemImage: "gearshape.fill")
                }
        }
    }
}

#Preview {
    MainView()
}
