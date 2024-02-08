//
//  TitheView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 29/12/23.
//

import SwiftUI
import CoreImage.CIFilterBuiltins

struct TitheView: View {
    
    private var pix = "(19) 99999-9999" // TODO: Check later if @AppStorage("pix") is really necessary
    let screenSize = UIScreen.main.bounds
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    
    var body: some View {
        // TODO: Add a share button in the Navigation Stack. When the person click, generate a image of the screen but only with QR Code and Pix address
        VStack {
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in risus ut dui congue venenatis. Maecenas viverra a lectus vitae molestie.") // TODO: Add the real text and remove Lorem Ipsum
                .frame(maxWidth: screenSize.width * 0.85)
                .padding(.top, 16)
            
            Spacer()
            
//            Image("googleQRCode")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 300, height: 300, alignment: .center) // TODO: Good size, but need to replace the fixed size for a customable one
//                .border(Color.black) // TODO: Remove later, just for test purposes
//                .overlay(alignment: .topTrailing) {
//                    Button {
//                        // TODO: Add action to copy the QR Code image to the clipboard or open another app to send the image
//                    } label: {
//                        Image(systemName: "square.and.arrow.up")
//                            .foregroundColor(.black)
//                            // TODO: Modify to a bigger size but not with a fixed one
//                    }
//                }
            // TODO: Test performance with the code above
            // TODO: Add action of people can tap on the image and share. Present a full screen "Copied" effect
            // TODO: Add default button tap blink effect when the person tap the image
            HStack {
                // TODO: Probably will need to remove this option because when you scan from a bank app it does not recognize it
                Image(uiImage: qrGenerator(string: pix))
                    .interpolation(.none)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300, alignment: .center)
//                    .overlay(alignment: .topTrailing) {
//                        Button {
//                            // TODO: Add action to copy the QR Code image to the clipboard or open another app to send the image
//                        } label: {
//                            Image(systemName: "square.and.arrow.up")
//                                .foregroundColor(.black)
//                                // TODO: Modify to a bigger size but not with a fixed one
//                        }
//                    }
                Button {
                    // TODO: Add action to copy the QR Code image to the clipboard or open another app to send the image
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(.black)
                }
            }
            .frame(alignment: .center)
            
            Text("Também pode-se tocar na imagem para copia") // TODO: Review this text
                .font(.footnote)
                .foregroundColor(.gray)
                .frame(alignment: .center)
            
            Spacer()
            
            HStack {
                Text("Pix:")
                Text("(19) 99999-9999") // TODO: Maybe make the full line a button so the person can tap wherever he/she want
                
                Button {
                    // TODO: Add action to copy the Pix address to the clipboard
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(.black) // TODO: Add dark mode
                }
            } .frame(maxWidth: 300) // TODO: Make this HStack same width as QRCode image but dynamically
                
            // TODO: Review de aligment of these two TextViews, if should use one line or two separated lines
            
            Spacer()
            
            Text("Outro tipo de doação?")
            Text(" Entre em contato via WhatsApp")
            
            Spacer()
            
            Button {
                // TODO: Add action to copy the Pix address to the clipboard
            } label: {
                Image("whatsappLogo")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding(.bottom, 16)
            }
            
        } //.fixedSize(horizontal: true, vertical: false) // TODO: Review. Need to make the HStack above the same width of the QR Code image
        .navigationTitle("Dízimo")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                // TODO: Replace the button with the ShareLinkView, but first learn how to make SwiftUI generate an image with all content in the screen
                Button {
                    
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        TitheView()
    }
}

extension TitheView {
    // Source: https://www.youtube.com/watch?v=OTjSpxqbeBI
    func qrGenerator(string: String) -> UIImage {
        filter.message = Data(string.utf8)
        
        if let outputImage = filter.outputImage {
            if let cgImage = context.createCGImage(outputImage, from: outputImage.extent) {
                return UIImage(cgImage: cgImage)
            }
        }
        
        return UIImage(systemName: "xmark.circle") ?? UIImage()
    }
}
