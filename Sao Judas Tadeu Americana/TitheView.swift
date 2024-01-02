//
//  TitheView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 29/12/23.
//

import SwiftUI

struct TitheView: View {
    var body: some View {
        // TODO: Add a share button in the Navigation Stack. When the person click, generate a image of the screen but only with QR Code and Pix address
        VStack {
            Image("googleQRCode")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300, alignment: .center) // TODO: Good size, but need to replace the fixed size for a customable one
                .border(Color.black) // TODO: Remove later, just for test purposes
                .overlay(alignment: .topTrailing) {
                    Button {
                        // TODO: Add action to copy the QR Code image to the clipboard or open another app to send the image
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                            .foregroundColor(.black)
                            // TODO: Modify to a bigger size but not with a fixed one
                    }
                }
            
            HStack {
                Text("Pix:")
                Text("(19) 99999-9999")
                
                Button {
                    // TODO: Add action to copy the Pix address to the clipboard
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(.black)
                }
            } .frame(maxWidth: 300) // TODO: Make this HStack same width as QRCode image but dynamically
                
            // TODO: Review de aligment of these two TextViews, if should use one line or two separated lines
            Text("Outro tipo de doação?")
            Text(" Entre em contato via WhatsApp")
            Button {
                // TODO: Add action to copy the Pix address to the clipboard
            } label: {
                Image("whatsappLogo")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 100, height: 100, alignment: .center)
            }
            
        } //.fixedSize(horizontal: true, vertical: false) // TODO: Review. Need to make the HStack above the same width of the QR Code image
    }
}

#Preview {
    TitheView()
}
