//
//  ContentView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 23/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            HStack(alignment: .center, spacing: 20) {
                Image("sjtFace")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 120, height: 120, alignment: .leading) // TODO: Remove fixed size, but the variable size should match this size proportionally
                    
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam porttitor") // TODO: Remove the Lorem ipsum with the real text
                    .fontWeight(.light)
            }
            .padding(20) // TODO: Remove fixed size
            
            VStack(alignment: .leading, spacing: 20) {
                Text("História")
                    .font(.title)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in risus ut dui congue venenatis. Maecenas viverra a lectus vitae molestie. Aliquam aliquet vestibulum congue. Aliquam eu elit quis sem commodo tristique sit amet quis quam. Donec tincidunt magna risus, ac cursus massa placerat eu...") // TODO: Add a fix number of allowed characters to display in the screen.
                // TODO: Add a thin text like "Tap to see more" indicating the person to tap and redirect to another screen with the full text
                // TODO: Remove the Lorem ipsum with the real text
                +
                Text(" Toque para continuar lendo")
                    .fontWeight(.bold) // TODO: Test another colors like gray to see if visually is better
            }
            .padding(20) // TODO: Remove fixed size
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Sobre a Paróquia")
                    .font(.title)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in risus ut dui congue venenatis. Maecenas viverra a lectus vitae molestie. Aliquam aliquet vestibulum congue. Aliquam eu elit quis sem commodo tristique sit amet quis quam. Donec tincidunt magna risus, ac cursus massa placerat eu...") // TODO: Remove the Lorem ipsum with the real text
                +
                Text(" Toque para continuar lendo")
                    .fontWeight(.bold) // TODO: Test another colors like gray to see if visually is better
            }
            .padding(20) // TODO: Remove fixed size
        }
    }
}

#Preview {
    ContentView()
}
