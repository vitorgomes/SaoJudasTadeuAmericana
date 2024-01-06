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
    
    var body: some View {
        HStack {
            List {
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies laoreet pretium. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean eget lectus nibh. Donec feugiat hendrerit lorem. Donec luctus libero a rutrum molestie. Quisque dictum euismod eros, sit amet luctus neque dignissim a. Fusce feugiat ut felis vitae congue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse malesuada scelerisque mollis. Maecenas quis efficitur nisi. Phasellus quis viverra neque. Integer nec justo arcu. Proin scelerisque eu turpis sed sollicitudin. In scelerisque elit id metus hendrerit sollicitudin. Vivamus non lobortis libero. Donec ut scelerisque sapien. Aenean dignissim hendrerit diam at accumsan. Nullam euismod interdum est, quis sodales odio convallis id. Etiam nec placerat nisi.") // TODO: Replace Lorem Ipsum text
            }
            
            VStack {
                Image(systemName: "flame.fill")
                    .foregroundColor(.orange)
                    .symbolEffect(.pulse) // TODO: This might distract the user. Make some test to decide remove or not
                
                Toggle(isOn: $firstDay) { // TODO: Remember to add the string on this line. I believe is for voiceOver
                }.toggleStyle(iOSCheckboxToggleStyle())
                    .frame(maxWidth: screenSize.width * 0.15) // TODO: Change later with new style, i belive minWidth and maxWidth will be necessary
                    // TODO: Make the toggle go down
                
                Toggle(isOn: $secondDay) {
                }.toggleStyle(iOSCheckboxToggleStyle())
                    .frame(maxWidth: screenSize.width * 0.15)
                
                Toggle(isOn: $thirdDay) {
                }.toggleStyle(iOSCheckboxToggleStyle())
                    .frame(maxWidth: screenSize.width * 0.15)
            }
        }
    }
}

#Preview {
    NovenaView()
}
