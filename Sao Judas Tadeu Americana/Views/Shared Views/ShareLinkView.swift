//
//  ShareLinkView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 26/01/24.
//

import SwiftUI

// TODO: While testing on a real phone try to add a text on item argument like "Texto do App São Judas Tadeu Americana" to refer the app and make people interest to download it.
// TODO: Create a folder for this shared View that use in more than one View.
struct ShareLinkView: View {
    
    var viewText: String
    var viewTitle: String
    
    var body: some View {
        ShareLink(item: viewText, preview: SharePreview("Compartilhar texto de \"\(viewTitle)\" em:", image: Image("sjtFace"))) { // TODO: Replace "sjtFace" image for the App icon image.
            Label("Compartilhar", systemImage: "square.and.arrow.up")
        }
    }
}

// Use for test purposes
//#Preview {
//    ShareLinkView(viewText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", viewTitle: "Título da View")
//}
