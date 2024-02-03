//
//  SjtHistoryImagesRowView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 23/01/24.
//

import SwiftUI


struct SjtHistoryImagesRowView: View {
    
    var images: [SjtHistoryImage]
    
    var body: some View {
        HStack {
            ForEach(images) { item in
                Spacer()
                SjtHistoryCircleImageView(sjtHistoryImage: item)
                Spacer()
            }
            
        }
    }
}

// Use for test purposes
#Preview {
    SjtHistoryImagesRowView(images: imagesGroup1)
}
