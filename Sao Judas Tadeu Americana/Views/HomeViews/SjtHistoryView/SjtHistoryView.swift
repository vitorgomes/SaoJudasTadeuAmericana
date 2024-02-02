//
//  SjtHistoryView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 28/12/23.
//

import SwiftUI

struct SjtHistoryView: View {
    
    //@Environment (\.dismiss) var dismiss
    let sjtHistoryText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies laoreet pretium. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean eget lectus nibh. Donec feugiat hendrerit lorem. Donec luctus libero a rutrum molestie. Quisque dictum euismod eros, sit amet luctus neque dignissim a. Fusce feugiat ut felis vitae congue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse malesuada scelerisque mollis. Maecenas quis efficitur nisi. Phasellus quis viverra neque. Integer nec justo arcu. Proin scelerisque eu turpis sed sollicitudin. In scelerisque elit id metus hendrerit sollicitudin. Vivamus non lobortis libero. Donec ut scelerisque sapien. Aenean dignissim hendrerit diam at accumsan. Nullam euismod interdum est, quis sodales odio convallis id. Etiam nec placerat nisi."
    
    var body: some View {
        List {
            // TODO: Fix view spacing between the elements
            Text("\(sjtHistoryText)") // TODO: Replace Lorem Ipsum text
                .listRowSeparator(.hidden)
            // TODO: Add font style
            // Test put the images between the texts paragraph, like a paragraph and an image and so on

            SjtHistoryImagesRowView(images: imagesGroup1)
                .listRowSeparator(.hidden)
            SjtHistoryImagesRowView(images: imagesGroup2)

            // TODO: Create a refactor to use this button in multiple screens
//            HStack {
//                Spacer()
//                
//                Button {
//                    dismiss()
//                } label: {
//                    HStack {
//                        Image(systemName: "chevron.left")
//                        Text("Voltar")
//                    }
//                }
//                .foregroundColor(.black) // TODO: Need to implement color for dark mode
//                
//                Spacer()
//            }

        }
            .navigationTitle("História")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    ShareLinkView(viewText: sjtHistoryText, viewTitle: "História de São Judas Tadeu")
                }
            }
    }
}

#Preview {
    NavigationStack {
        SjtHistoryView()
    }
}


