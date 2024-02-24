//
//  MainView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 11/01/24.
//

import SwiftUI
import UserNotifications

struct MainView: View {
    
    // Nofitications Constants
    let center = UNUserNotificationCenter.current()
    let content = UNMutableNotificationContent()
    
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
        .navigationTitle("Início") // TODO: It is showing on all Views from the TabView, need to investigate
        .onAppear{
            // TODO: Need to be moved to another Life Cycle modifier. It is here only for test purposes while build the Nofification functions
            notificationAuthorization()
            massHournotification()
        }
        .accentColor(.green) // TODO: Deprecated modifier after iOS 16. Need to create a AccentColor on Assets. Using green for test purposes
    }
}

// TODO: Move to a dedicated file and remove from MainView. I believe it is better to start the checks on SplashScreen
// TODO: Add a notification based on MassesNotifications allowed that remember user to silence his phone before the Mass (if possible with a image when user tap the notification)
extension MainView {
    func notificationAuthorization() {
        center.requestAuthorization(options: [.alert, .sound, .badge, .provisional]) { success, error in
            if success {
                print("NOTIFICATION WORKING")
            } else if let error = error {
                print("NOTIFICATION NOT WORKING, error message: \(error.localizedDescription)")
            }
        }
    }
    
    func massHournotification() {
        // TODO: Maybe the set of values here can be turned in another function
        content.title = "A missa irá começar em"
        content.subtitle = "5 minutos"
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        return center.add(request)
    }
}

#Preview {
    NavigationStack { // TODO: Need to understand when start app from here next pages are not using large titles and back button does not contain the name. Apparently if you remove the navigationTitle from HomeView and add here it works
        MainView()
    }
}
