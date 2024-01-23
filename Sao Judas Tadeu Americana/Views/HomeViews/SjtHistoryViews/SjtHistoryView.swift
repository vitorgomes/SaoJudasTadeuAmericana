//
//  SjtHistoryView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 28/12/23.
//

import SwiftUI

struct SjtHistoryView: View {
    
    @Environment (\.dismiss) var dismiss
    let screenSize = UIScreen.main.bounds
    
    var body: some View {
        List {
            // TODO: Fix view spacing between the elements
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies laoreet pretium. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean eget lectus nibh. Donec feugiat hendrerit lorem. Donec luctus libero a rutrum molestie. Quisque dictum euismod eros, sit amet luctus neque dignissim a. Fusce feugiat ut felis vitae congue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse malesuada scelerisque mollis. Maecenas quis efficitur nisi. Phasellus quis viverra neque. Integer nec justo arcu. Proin scelerisque eu turpis sed sollicitudin. In scelerisque elit id metus hendrerit sollicitudin. Vivamus non lobortis libero. Donec ut scelerisque sapien. Aenean dignissim hendrerit diam at accumsan. Nullam euismod interdum est, quis sodales odio convallis id. Etiam nec placerat nisi.") // TODO: Replace Lorem Ipsum text
                .listRowSeparator(.hidden)
            // TODO: Add font style
            HStack { // Test put the images between the texts paragraph, like a paragraph and an image and so on
                ForEach(imagesGroup1) { item in
                    Spacer()
                    SjtHistoryCircleImageView(sjtHistoryImage: item)
                    Spacer()
                }

            }
            .listRowSeparator(.hidden)
            HStack {
                ForEach(imagesGroup2) { item in
                    Spacer()
                    SjtHistoryCircleImageView(sjtHistoryImage: item)
                    Spacer()
                }
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

        }
            .navigationTitle("História")
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
        SjtHistoryView()
    }
}


