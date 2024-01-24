//
//  AboutView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 27/12/23.
//

import SwiftUI
import MapKit

struct AboutView: View {
    
    let churchLocation = CLLocationCoordinate2D(latitude: -22.750035511019487, longitude: -47.358945254521316)
    @Environment (\.dismiss) var dismiss
    @State var mapCamera: MapCameraPosition = .automatic
    
    var body: some View {
        // TODO: Fix view spacing between the elements
        List {
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies laoreet pretium. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean eget lectus nibh. Donec feugiat hendrerit lorem. Donec luctus libero a rutrum molestie. Quisque dictum euismod eros, sit amet luctus neque dignissim a. Fusce feugiat ut felis vitae congue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse malesuada scelerisque mollis. Maecenas quis efficitur nisi. Phasellus quis viverra neque. Integer nec justo arcu. Proin scelerisque eu turpis sed sollicitudin. In scelerisque elit id metus hendrerit sollicitudin. Vivamus non lobortis libero. Donec ut scelerisque sapien. Aenean dignissim hendrerit diam at accumsan. Nullam euismod interdum est, quis sodales odio convallis id. Etiam nec placerat nisi.")
                .listRowSeparator(.hidden) // TODO: Replace Lorem Ipsum text
                // TODO: Add font style
                // TODO: Test put images from the church between the texts paragraph, like a paragraph and an image and so on
            HStack { // TODO: Make these as buttons, not only images
                Spacer()
                Image("instagramLogo")
                    .resizable()
                    .scaledToFill()
                    //.clipShape(Circle())
                    .frame(width: 70, height: 70)
                Image("whatsappLogo")
                    // TODO: Create a function to replace all copied code
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 70, height: 70)
                Image("facebookLogo")
                // TODO: Create a function to replace all copied code
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 70, height: 70)
                Spacer()
            }.listRowSeparator(.hidden)
            //.background(Color.brown) // TODO: Decide a background color for the entire app
        
            Map() {
                Marker("Paróquia São Judas Tadeu", coordinate: churchLocation)
            }
            .frame(width: 300, height: 200, alignment: .center) // TODO: Edit fixed size
            .safeAreaInset(edge: .bottom, alignment: .trailing) {
                Button {
                    mapCamera = .region(MKCoordinateRegion(center: churchLocation, latitudinalMeters: 100, longitudinalMeters: 100)) // TODO: Not working, need to investigate
                } label: {
                    Image(systemName: "location.circle.fill")
                        .resizable()
                        .foregroundColor(.black) // TODO: Edit for Dark Mode
                        .frame(maxWidth: 30, maxHeight: 30) // TODO: Add dynamic size
                }.background(Color.brown) // TODO: Only for tests. Remove later
                    .padding(20)
                    
            }
            
            HStack {
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Text("Voltar")
                }
                .foregroundColor(.black) // TODO: Need to implement color for dark mode
                
                Spacer()
            }
        }// .scrollContentBackground(.hidden) // TODO: Test it later
            .navigationTitle("Sobre")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        // TODO: Add the action to share the text of SJT History
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                    }
                }
            }
    }
}

#Preview {
    NavigationStack {
        AboutView()
    }
}
