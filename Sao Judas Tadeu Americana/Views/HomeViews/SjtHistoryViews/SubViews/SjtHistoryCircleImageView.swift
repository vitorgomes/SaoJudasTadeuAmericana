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
            .frame(width: 100, height: 100)
    }
}

// Use for test purposes
//#Preview {
//    SjtHistoryCircleImageView(sjtHistoryImage: imagesGroup1.first!)
//}
