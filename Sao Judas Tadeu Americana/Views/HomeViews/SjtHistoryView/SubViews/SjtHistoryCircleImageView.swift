//
//  SjtHistoryCircleImageView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 23/01/24.
//

import SwiftUI

struct SjtHistoryCircleImageView: View {
    
    var sjtHistoryImage: SjtHistoryImage
    
    var body: some View {
        Image("\(sjtHistoryImage.name)")
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .frame(maxWidth: 100, maxHeight: 100) // TODO: Need to add dynamic size
    }
}

// Use for test purposes
//#Preview {
//    SjtHistoryCircleImageView(sjtHistoryImage: imagesGroup1.first!)
//}
