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
    @Environment (\.dismiss) var dismiss
    @State private var candleHalfView = true
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
                
                // TODO: I believe it is better to make fixed buttons, review the video about GeometryReader with reference in SettingsView
                HStack {
                    Spacer()
                    
                    Button {
                        // TODO: Add action to when tapped mark the check box of the day completed and return to previous screen
                    } label: {
                        HStack {
                            Image(systemName: "checkmark")
                            Text("Feito") // TODO: Discuss with the Priest if "Feito" can be replaced by another word
                        }
                    }
                    .foregroundColor(.black) // TODO: Need to implement color for dark mode
                    
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "chevron.left") // TODO: Need to align with "Feito" checkmark.square SF Symbol
                            Text("Voltar") // TODO: Discuss with the Priest if "Feito" can be replaced by another word
                        }
                    }
                    .foregroundColor(.black) // TODO: Need to implement color for dark mode
                    
                    Spacer()
                }
            }
            VStack {
                // TODO: Search how to stay on top because when you disable $candleHalfView it is getting on top of the flame
                Toggle(isOn: $candleHalfView) {
                }.toggleStyle(ChevronToggleStyle())
                    .padding(.top, 16)
                    .foregroundStyle(.black)
                    .frame(width: 50, height: 50) // TODO: Add a dynamic size, or a max min one
                    //.background(Color(.red)) // TODO: Test purposes, remove later
                
                if candleHalfView {
                    VStack {
                        // VStack used to create half space, when user wants to make the candle near to bottom, to make easy fingers reach out
                    }.frame(maxHeight: screenSize.height * 0.5)
                } else {
                    Spacer() // Makes space between candle stack and chevrondown/up Toggle consequently make the toggle be fixed to the top
                }
                
                VStack {
                    // TODO: Need to draw the candle using the flame and checkboxes
                    Image(systemName: "flame.fill")
                        .foregroundColor(.orange)
                        .symbolEffect(.pulse) // TODO: This might distract the user. Make some test to decide remove or not. Maybe make it slower or static
                        .padding(.top, 16)
                    
                    Spacer()
                    
                    // Should has 9 days
                    // TODO: Add a logic where only the present day of Novena is enabled, the past days are disabled. If you mark a day as done, the past ones get disabled. Also change the color when disabled. There is another option to make the screen follow a candle logic, where the flame starts on the top and when the person marks a day completed, it shrinks
                    VStack {
                        Toggle(isOn: $firstDay) { // TODO: Remember to add the string on this line. I believe is for voiceOver
                        }.toggleStyle(iOSCheckboxToggleStyle())
                            .frame(maxWidth: screenSize.width * 0.15) // TODO: Change later with new style, i belive minWidth and maxWidth will be necessary
                            // TODO: Make the toggle go down
                            // TODO: Test with bigger checkbox sizes
                            .foregroundColor(.black) // TODO: Need to implement color for dark mode
                        
                        Rectangle().fill(Color.black).frame(width: 1, height: 8, alignment: .center) // TODO: Dynamically expand line height
                    }
                    
                    Spacer()
                    
                    VStack {
                        Toggle(isOn: $secondDay) {
                        }.toggleStyle(iOSCheckboxToggleStyle())
                            .frame(maxWidth: screenSize.width * 0.15)
                            .foregroundColor(.black)
                            .disabled(true)
                        
                        Rectangle().fill(Color.black).frame(width: 1, height: 8, alignment: .center)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Toggle(isOn: $thirdDay) {
                        }.toggleStyle(iOSCheckboxToggleStyle())
                            .frame(maxWidth: screenSize.width * 0.15)
                            .foregroundColor(.black)
                            .disabled(true)
                        
                        Rectangle().fill(Color.black).frame(width: 1, height: 8, alignment: .center)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Toggle(isOn: $fourthDay) {
                        }.toggleStyle(iOSCheckboxToggleStyle())
                            .frame(maxWidth: screenSize.width * 0.15)
                            .foregroundColor(.black)
                            .disabled(true)
                        
                        Rectangle().fill(Color.black).frame(width: 1, height: 8, alignment: .center)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Toggle(isOn: $fifthay) {
                        }.toggleStyle(iOSCheckboxToggleStyle())
                            .frame(maxWidth: screenSize.width * 0.15)
                            .foregroundColor(.black)
                            .disabled(true)
                        
                        Rectangle().fill(Color.black).frame(width: 1, height: 8, alignment: .center)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Toggle(isOn: $sixthDay) {
                        }.toggleStyle(iOSCheckboxToggleStyle())
                            .frame(maxWidth: screenSize.width * 0.15)
                            .foregroundColor(.black)
                            .disabled(true)
                        
                        Rectangle().fill(Color.black).frame(width: 1, height: 8, alignment: .center)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Toggle(isOn: $seventhDay) {
                        }.toggleStyle(iOSCheckboxToggleStyle())
                            .frame(maxWidth: screenSize.width * 0.15)
                            .foregroundColor(.black)
                            .disabled(true)
                        
                        Rectangle().fill(Color.black).frame(width: 1, height: 8, alignment: .center)
                    }

                    Spacer()
                    
                    VStack {
                        Toggle(isOn: $eighthDay) {
                        }.toggleStyle(iOSCheckboxToggleStyle())
                            .frame(maxWidth: screenSize.width * 0.15)
                            .foregroundColor(.black)
                            .disabled(true)
                        
                        Rectangle().fill(Color.black).frame(width: 1, height: 8, alignment: .center)
                    }
  
                    Spacer()
                    
                    Toggle(isOn: $ninthDay) {
                    }.toggleStyle(iOSCheckboxToggleStyle())
                        .frame(maxWidth: screenSize.width * 0.15)
                        .foregroundColor(.black)
                        .disabled(true)
                        .padding(.bottom, 16)
                }.frame(maxHeight: candleHalfView ? screenSize.height * 0.5 : screenSize.height * 0.8) // TODO: Test later with the TabBar
                
            }.frame(maxWidth: screenSize.width * 0.13)
        }.padding(.top, 0.2)
        .navigationTitle("Novena X, Dia X")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        NovenaView()
    }
}
