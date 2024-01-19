//
//  SjtHistoryView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 28/12/23.
//

import SwiftUI

struct SjtHistoryView: View {
    var body: some View {
        List {
            // TODO: Fix view spacing between the elements
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies laoreet pretium. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean eget lectus nibh. Donec feugiat hendrerit lorem. Donec luctus libero a rutrum molestie. Quisque dictum euismod eros, sit amet luctus neque dignissim a. Fusce feugiat ut felis vitae congue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse malesuada scelerisque mollis. Maecenas quis efficitur nisi. Phasellus quis viverra neque. Integer nec justo arcu. Proin scelerisque eu turpis sed sollicitudin. In scelerisque elit id metus hendrerit sollicitudin. Vivamus non lobortis libero. Donec ut scelerisque sapien. Aenean dignissim hendrerit diam at accumsan. Nullam euismod interdum est, quis sodales odio convallis id. Etiam nec placerat nisi.") // TODO: Replace Lorem Ipsum text
                .listRowSeparator(.hidden)
            // TODO: Add font style
            HStack { // Understand why (alignment: .center) is not aligning it
                // Test put the images between the texts paragraph, like a paragraph and an image and so on
                Image("sjtHistory1")
                // TODO: Create a function to replace all copied code
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 100, height: 100)
                
                Spacer() // TODO: Review if Spacer() is necessary
                
                Image("sjtHistory2")
                // TODO: Create a function to replace all copied code
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 100, height: 100)
            }
            .listRowSeparator(.hidden)
            HStack {
                Image("sjtHistory3")
                // TODO: Create a function to replace all copied code
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 100, height: 100)
                
                Spacer() // TODO: Review if Spacer() is necessary
                
                Image("sjtHistory4")
                // TODO: Create a function to replace all copied code
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 100, height: 100)
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
