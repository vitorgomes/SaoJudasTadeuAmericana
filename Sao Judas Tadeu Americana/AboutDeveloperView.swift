//
//  AboutDeveloperView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 09/01/24.
//

import SwiftUI

struct AboutDeveloperView: View {
    var body: some View {
        List { // TODO: Depending on the size of the content on this screen may a VStack can be used
            HStack {
                Spacer()
                
                Image("developerMemoji") // TODO: Replace with a better photo
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 200, height: 200) // TODO: Replace these fixed sizes with dynamic sizes
                
                Spacer()
            }
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies laoreet pretium. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean eget lectus nibh. Donec feugiat hendrerit lorem. Donec luctus libero a rutrum molestie. Quisque dictum euismod eros, sit amet luctus neque dignissim a. Fusce feugiat ut felis vitae congue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse malesuada scelerisque mollis. Maecenas quis efficitur nisi. Phasellus quis viverra neque. Integer nec justo arcu. Proin scelerisque eu turpis sed sollicitudin. In scelerisque elit id metus hendrerit sollicitudin. Vivamus non lobortis libero. Donec ut scelerisque sapien. Aenean dignissim hendrerit diam at accumsan. Nullam euismod interdum est, quis sodales odio convallis id. Etiam nec placerat nisi.")
        }
    }
}

#Preview {
    AboutDeveloperView()
}
