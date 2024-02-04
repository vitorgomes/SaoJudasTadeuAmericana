//
//  SettingsView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 02/01/24.
//

import SwiftUI

struct SettingsView: View {
    
    let screenSize = UIScreen.main.bounds
    
    @State var firstSFSymbolHeight: Double = .zero // TODO: Review later, maybe only width is fine for the questionmark SFSymbol
    @State var firstSFSymbolWidth: Double = .zero
    
    var body: some View {
        VStack {
            // TODO: Add action to when tapped send to About the App screen (NavigationLink)
            ForEach(rowContents) { item in
                SettingsRowView(settingsRowContent: item)
            }
            
            // TODO: Need to figure out how to implement the getViewSize bellow in the first Row and implement the .frame(width: firstSFSymbolWidth, height: firstSFSymbolHeight) in the last image row because the questionmark SFSymbol does not get same width of the others SFSymbols (that's why i will leave the background color blue to see that). Will leave the commented code bellow for now because it is working fine when not working with SubViews
            
            // ----- FIRST ROW -----
//            HStack(spacing: 0) {
//                Image(systemName: "slider.horizontal.3")
//                    .font(.title)
//                    .getViewSize { size in
//                        firstSFSymbolWidth = size.width
//                        firstSFSymbolHeight = size.height
//                    }
//                    .paddingLeadingAndTrailing()
//                VStack(alignment: .leading) {
//                    Text("Aparência")
//                        .font(.title)
//                    Text("Troque o tema de cores")
//                        .padding(.trailing, 16)
//                }
//            }
//            .frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.22, alignment: .leading)
//            .border(Color.black)
//            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))

            // ----- LAST ROW -----
//            HStack(spacing: 0) {
//                Image(systemName: "questionmark")
//                    .font(.title)
//                    .frame(width: firstSFSymbolWidth, height: firstSFSymbolHeight)
//                    .paddingLeadingAndTrailing()
//                VStack(alignment: .leading) {
//                    Text("Sobre")
//                        .font(.title)
//                    Text("Saiba mais sobre o aplicativo")
//                        .padding(.trailing, 16)
//                }
//            }
//            .frame(maxWidth: screenSize.width * 0.85, maxHeight: screenSize.height * 0.22, alignment: .leading)
//            .border(Color.black)
//            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
        }
        .navigationTitle("Configurações")
        .padding(.bottom, 16)
    }
}

// Reference: https://www.youtube.com/watch?v=H6S5xKgb9k8
// TODO: Move this to a dedicated file
struct ViewPreferenceKey: PreferenceKey {
    static var defaultValue: CGSize = .zero
    
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
    }
}

extension View {
    func getViewSize(size: @escaping (CGSize) -> Void) -> some View {
        background(
            GeometryReader { geo in
                Color.red // TODO: Tests purpose, change to "clear" later
                    .preference(key: ViewPreferenceKey.self, value: geo.size)
            }
        )
        .onPreferenceChange(ViewPreferenceKey.self, perform: size)
    }
}

#Preview {
    NavigationStack {
        SettingsView()
    }
}
