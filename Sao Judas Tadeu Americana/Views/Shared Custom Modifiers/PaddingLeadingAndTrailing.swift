//
//  PaddingLeadingAndTrailing.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 30/01/24.
//

import SwiftUI

struct PaddingLeadingAndTrailing: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.leading)
            .padding(.trailing)
    }
}

extension View {
    func paddingLeadingAndTrailing() -> some View {
        modifier(PaddingLeadingAndTrailing())
    }
}

//#Preview {
//    PaddingLeadingAndTrailing()
//}
