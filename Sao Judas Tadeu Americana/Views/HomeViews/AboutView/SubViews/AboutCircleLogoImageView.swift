//
//  AboutCircleLogoImageView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 25/01/24.
//

import SwiftUI

struct AboutCircleLogoImageView: View {
    
    var aboutImage: AboutImage
    
    var body: some View {
        Image("\(aboutImage.name)")
            .resizable()
            .scaledToFill()
            .frame(width: 70, height: 70)
            .padding()
    }
}

// Use for test purposes
//#Preview {
//    AboutCircleLogoImageView(aboutImage: images.first!)
//}
