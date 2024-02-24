//
//  NovenaView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 05/01/24.
//

import SwiftUI

struct NovenaView: View {
    
    let screenSize = UIScreen.main.bounds
    
    @Environment (\.dismiss) var dismiss
    @State private var candleHalfView = true
    @State private var buttonsHeight: Double = .zero
    
    // Day variables
    // TODO: Repeated code. Think something later to use less variables as possible. Will keep it for now just for test purposes
    @State private var firstDay = true
    @State private var secondDay = true
    @State private var thirdDay = true
    @State private var fourthDay = true
    @State private var fifthDay = true
    @State private var sixthDay = true
    @State private var seventhDay = true
    @State private var eighthDay = true
    @State private var ninthDay = true
    
    var body: some View {
        HStack {
            // MARK: List + Done and Back Buttons
            ZStack(alignment: .bottom) {
                List {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies laoreet pretium. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean eget lectus nibh. Donec feugiat hendrerit lorem. Donec luctus libero a rutrum molestie. Quisque dictum euismod eros, sit amet luctus neque dignissim a. Fusce feugiat ut felis vitae congue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse malesuada scelerisque mollis. Maecenas quis efficitur nisi. Phasellus quis viverra neque. Integer nec justo arcu. Proin scelerisque eu turpis sed sollicitudin. In scelerisque elit id metus hendrerit sollicitudin. Vivamus non lobortis libero. Donec ut scelerisque sapien. Aenean dignissim hendrerit diam at accumsan. Nullam euismod interdum est, quis sodales odio convallis id. Etiam nec placerat nisi.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies laoreet pretium. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean eget lectus nibh. Donec feugiat hendrerit lorem. Donec luctus libero a rutrum molestie. Quisque dictum euismod eros, sit amet luctus neque dignissim a. Fusce feugiat ut felis vitae congue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse malesuada scelerisque mollis. Maecenas quis efficitur nisi. Phasellus quis viverra neque. Integer nec justo arcu. Proin scelerisque eu turpis sed sollicitudin. In scelerisque elit id metus hendrerit sollicitudin. Vivamus non lobortis libero. Donec ut scelerisque sapien. Aenean dignissim hendrerit diam at accumsan. Nullam euismod interdum est, quis sodales odio convallis id. Etiam nec placerat nisi.") // TODO: Replace Lorem Ipsum text
                }
                .safeAreaInset(edge: .bottom) {
                    Color.clear
                        .frame(height: buttonsHeight + 8)
                }
                .padding(.bottom, 16)
                .edgesIgnoringSafeArea(.bottom)
                
                // TODO: Refactor this later, since same Button was created two times
                VStack(spacing: 8) {
                    Button {
                        // TODO: Add action to when tapped mark the check box of the day completed and return to previous screen
                    } label: {
                        HStack {
                            Image(systemName: "checkmark")
                            Text("Feito") // TODO: Discuss with the Priest if "Feito" can be replaced by another word
                        }
                        .tint(.black)
                        .frame(width: screenSize.width * 0.65, height: 35)
                        .background(Color(.green)) // TODO: Change the color later
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    }

                    Button {
                        // TODO: Add action to return previous screen
                    } label: {
                        HStack {
                            Image(systemName: "chevron.left") // TODO: Need to align with "Feito" checkmark.square SF Symbol
                            Text("Voltar")
                        }
                        .tint(.black)
                        .frame(width: screenSize.width * 0.65, height: 35)
                        .background(Color(.green)) // TODO: Change the color later
                        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    }
                }
                .getViewSize { size in
                    buttonsHeight = size.height
                    print(buttonsHeight) // TODO: Tests purpose, remove later
                }
            }
            
            // MARK:  Chevron Toggle + Candle Toggles
            VStack {
                Toggle(isOn: $candleHalfView) {
                }.toggleStyle(ChevronToggleStyle())
                    .padding(.top, 8)
                    .padding(.trailing, 2) // TODO: Review if a dynamic size is necessary
                    .foregroundStyle(.black)
                    .frame(width: 50, height: 50) // TODO: Add a dynamic size, or a max min one
                
                if candleHalfView {
                    VStack {// VStack used to create half space, when user wants to make the candle near to bottom, to make easy fingers reach out
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
                    }

                    ProgressVerticalLineView()
                    
                    VStack {
                        Toggle(isOn: $secondDay) {
                        }.toggleStyle(iOSCheckboxToggleStyle())
                            .frame(maxWidth: screenSize.width * 0.15)
                            .foregroundColor(.black)
                            .disabled(true)
                    }
                    
                    ProgressVerticalLineView()
                    
                    VStack {
                        Toggle(isOn: $thirdDay) {
                        }.toggleStyle(iOSCheckboxToggleStyle())
                            .frame(maxWidth: screenSize.width * 0.15)
                            .foregroundColor(.black)
                            .disabled(true)
                    }

                    ProgressVerticalLineView()
                    
                    VStack {
                        Toggle(isOn: $fourthDay) {
                        }.toggleStyle(iOSCheckboxToggleStyle())
                            .frame(maxWidth: screenSize.width * 0.15)
                            .foregroundColor(.black)
                            .disabled(true)
                    }
                    
                    ProgressVerticalLineView()
                    
                    VStack {
                        Toggle(isOn: $fifthDay) {
                        }.toggleStyle(iOSCheckboxToggleStyle())
                            .frame(maxWidth: screenSize.width * 0.15)
                            .foregroundColor(.black)
                            .disabled(true)
                    }
                    
                    ProgressVerticalLineView()
                    
                    VStack {
                        Toggle(isOn: $sixthDay) {
                        }.toggleStyle(iOSCheckboxToggleStyle())
                            .frame(maxWidth: screenSize.width * 0.15)
                            .foregroundColor(.black)
                            .disabled(true)
                    }
                    
                    ProgressVerticalLineView()
                    
                    VStack {
                        Toggle(isOn: $seventhDay) {
                        }.toggleStyle(iOSCheckboxToggleStyle())
                            .frame(maxWidth: screenSize.width * 0.15)
                            .foregroundColor(.black)
                            .disabled(true)
                    }

                    ProgressVerticalLineView()
                    
                    VStack {
                        Toggle(isOn: $eighthDay) {
                        }.toggleStyle(iOSCheckboxToggleStyle())
                            .frame(maxWidth: screenSize.width * 0.15)
                            .foregroundColor(.black)
                            .disabled(true)
                    }
  
                    ProgressVerticalLineView()
                    
                    Toggle(isOn: $ninthDay) {
                    }.toggleStyle(iOSCheckboxToggleStyle())
                        .frame(maxWidth: screenSize.width * 0.15)
                        .foregroundColor(.black)
                        .disabled(true)
                        .padding(.bottom, 16)
                }.frame(maxHeight: candleHalfView ? screenSize.height * 0.5 : screenSize.height * 0.8) // TODO: Test later with the TabBar
                
            }
            .frame(maxWidth: screenSize.width * 0.13)
        }
        .padding(.top, 0.2)
        .navigationTitle("Novena X, Dia X")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                // TODO: Add functionality here
                // TODO: Check the color
                Image(systemName: "square.and.arrow.up")
            }
        }
    }
}

#Preview {
    NavigationStack {
        NovenaView()
    }
}
