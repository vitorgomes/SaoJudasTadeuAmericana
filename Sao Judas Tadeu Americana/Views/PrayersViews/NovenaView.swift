//
//  NovenaView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 05/01/24.
//

import SwiftUI

struct NovenaView: View {
    
    let screenSize = UIScreen.main.bounds
    
    // TODO: Repeated code. Think something later to use less variables as possible. Will keep it for now just for test purposes
    @State private var firstDay = true
    @State private var secondDay = true
    @State private var thirdDay = true
    @State private var fourthDay = true
    @State private var fifthay = true
    @State private var sixthDay = true
    @State private var seventhDay = true
    @State private var eighthDay = true
    @State private var ninthDay = true
    
    var body: some View {
        HStack {
            List {
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies laoreet pretium. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean eget lectus nibh. Donec feugiat hendrerit lorem. Donec luctus libero a rutrum molestie. Quisque dictum euismod eros, sit amet luctus neque dignissim a. Fusce feugiat ut felis vitae congue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse malesuada scelerisque mollis. Maecenas quis efficitur nisi. Phasellus quis viverra neque. Integer nec justo arcu. Proin scelerisque eu turpis sed sollicitudin. In scelerisque elit id metus hendrerit sollicitudin. Vivamus non lobortis libero. Donec ut scelerisque sapien. Aenean dignissim hendrerit diam at accumsan. Nullam euismod interdum est, quis sodales odio convallis id. Etiam nec placerat nisi.") // TODO: Replace Lorem Ipsum text
                
                HStack {
                    // Using these two Spacer() is a poor way to align it, but the .frame(alignment: .center) was not working. May can be replaced by GeometryReader, but it will consume more memory
                    Spacer()
                    
                    Button {
                        // TODO: Add action to when tapped mark the check box of the day completed and return to previous screen
                    } label: {
                        Text("Feito") // TODO: Discuss with the Priest if "Feito" can be replaced by another word
                    } .frame(maxWidth: screenSize.width * 0.45, minHeight: 35) // TODO: Since this button is using two Spacer() to align it on center, may be it will need to review the button width size. Tip: Remove Spacer() for tests
                    .foregroundColor(.black)
                    .overlay {
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black, lineWidth: 1)
                    }
                    
                    Spacer()
                }
            }
            
            VStack {
                
                VStack {
                    // Testing purposes to make candle half size of screen, so it will be easier to users reach all days with fingers
                    // TODO: Maybe add a text or image here to populate the screen
                    // TODO: Maybe make this a configuration, so user can set the way he want, full size or not. Probable can add the caret simbol (^) at the top, in a dropdown button
                }.frame(maxHeight: screenSize.height * 0.5)
                
                VStack {
                    // TODO: Need to draw the candle using the flame and checkboxes
                    Image(systemName: "flame.fill")
                        .foregroundColor(.orange)
                        .symbolEffect(.pulse) // TODO: This might distract the user. Make some test to decide remove or not. Maybe make it slower
                    
                    Spacer()
                    
                    // Should has 9 days
                    // TODO: Add a logic where only the present day of Novena is enabled, the past days are disabled. If you mark a day as done, the past ones get disabled. Also change the color when disabled. There is another option to make the screen follow a candle logic, where the flame starts on the top and when the person marks a day completed, it shrinks
                    Toggle(isOn: $firstDay) { // TODO: Remember to add the string on this line. I believe is for voiceOver
                    }.toggleStyle(iOSCheckboxToggleStyle())
                        .frame(maxWidth: screenSize.width * 0.15) // TODO: Change later with new style, i belive minWidth and maxWidth will be necessary
                        // TODO: Make the toggle go down
                        // TODO: Test with bigger checkbox sizes
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Toggle(isOn: $secondDay) {
                    }.toggleStyle(iOSCheckboxToggleStyle())
                        .frame(maxWidth: screenSize.width * 0.15)
                        .foregroundColor(.black)
                        .disabled(true)
                    
                    Spacer()
                    
                    Toggle(isOn: $thirdDay) {
                    }.toggleStyle(iOSCheckboxToggleStyle())
                        .frame(maxWidth: screenSize.width * 0.15)
                        .foregroundColor(.black)
                        .disabled(true)
                    
                    Spacer()
                    
                    Toggle(isOn: $fourthDay) {
                    }.toggleStyle(iOSCheckboxToggleStyle())
                        .frame(maxWidth: screenSize.width * 0.15)
                        .foregroundColor(.black)
                        .disabled(true)
                    
                    Spacer()
                    
                    Toggle(isOn: $fifthay) {
                    }.toggleStyle(iOSCheckboxToggleStyle())
                        .frame(maxWidth: screenSize.width * 0.15)
                        .foregroundColor(.black)
                        .disabled(true)
                    
                    Spacer()
                    
                    Toggle(isOn: $sixthDay) {
                    }.toggleStyle(iOSCheckboxToggleStyle())
                        .frame(maxWidth: screenSize.width * 0.15)
                        .foregroundColor(.black)
                        .disabled(true)
                    
                    Spacer()
                    
                    Toggle(isOn: $seventhDay) {
                    }.toggleStyle(iOSCheckboxToggleStyle())
                        .frame(maxWidth: screenSize.width * 0.15)
                        .foregroundColor(.black)
                        .disabled(true)
                    
                    Spacer()
                    
                    Toggle(isOn: $eighthDay) {
                    }.toggleStyle(iOSCheckboxToggleStyle())
                        .frame(maxWidth: screenSize.width * 0.15)
                        .foregroundColor(.black)
                        .disabled(true)
                    
                    Spacer()
                    
                    Toggle(isOn: $ninthDay) {
                    }.toggleStyle(iOSCheckboxToggleStyle())
                        .frame(maxWidth: screenSize.width * 0.15)
                        .foregroundColor(.black)
                        .disabled(true)
                        .padding(.bottom, 30) // TODO: Change 30 for a dynamic number based on User's screen size
                }.frame(maxHeight: screenSize.height * 0.5)
                
            }
        }
    }
}

#Preview {
    NovenaView()
}
