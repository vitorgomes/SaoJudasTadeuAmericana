//
//  AboutView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 27/12/23.
//

import SwiftUI
import MapKit

struct AboutView: View {
    var body: some View {
        // TODO: Fix view spacing between the elements
        VStack {
            Text("Sobre a Paróquia")
                .font(.title)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies laoreet pretium. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean eget lectus nibh. Donec feugiat hendrerit lorem. Donec luctus libero a rutrum molestie. Quisque dictum euismod eros, sit amet luctus neque dignissim a. Fusce feugiat ut felis vitae congue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse malesuada scelerisque mollis. Maecenas quis efficitur nisi. Phasellus quis viverra neque. Integer nec justo arcu. Proin scelerisque eu turpis sed sollicitudin. In scelerisque elit id metus hendrerit sollicitudin. Vivamus non lobortis libero. Donec ut scelerisque sapien. Aenean dignissim hendrerit diam at accumsan. Nullam euismod interdum est, quis sodales odio convallis id. Etiam nec placerat nisi.") // TODO: Replace Lorem Ipsum text
                // TODO: Add font style
            HStack {
                Image("instagramLogo")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 100, height: 100)
                Image("whatsappLogo")
                    // TODO: Create a function to replace all copied code
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 100, height: 100)
                Image("facebookLogo")
                // TODO: Create a function to replace all copied code
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 100, height: 100)
            }
        
            Map() {
                Marker("Paróquia São Judas Tadeu", coordinate: CLLocationCoordinate2D(latitude: -22.750035511019487, longitude: -47.358945254521316))
            }
            .frame(width: 300, height: 200, alignment: .center) // TODO: Edit fixed size
        }
    }
}

#Preview {
    AboutView()
}
