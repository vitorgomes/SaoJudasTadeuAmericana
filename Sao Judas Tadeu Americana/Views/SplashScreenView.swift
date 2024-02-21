//
//  SplashScreenView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 19/02/24.
//

import SwiftUI

//struct DiagonalRectangle

struct SplashScreenView: View {
    
    let screenSize = UIScreen.main.bounds
    
    @State private var isActive = false
    
    var body: some View {
        ZStack {
            if self.isActive {
                MainView()
            } else {
                VStack {
                    Text("Test")
                        .rotationEffect(.degrees(303)) // TODO: Not elegant at all but working. Need to review this later to see if there is a better way to achive this
                }
                .frame(width: screenSize.width * 1, height: screenSize.width * 2)
                //.clipShape(Rectangle())
                .background(Color(.red))
                .rotationEffect(.radians(1.0))
            }
        }
        .frame(width: screenSize.width * 1, height: screenSize.height * 1)
        .background(Color(.green)) // TODO: Color for tests purposes, change later
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
