//
//  ProgressVerticalLineView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 18/02/24.
//

import SwiftUI

struct ProgressVerticalLineView: View {
    var body: some View {
        ZStack {
            Spacer()
                .background(Rectangle().fill(Color.black).frame(width: 1, alignment: .center)) // TODO: Maybe need to add a minHeight since candle in half view is to short and can cause trouble for those user who has a fat finger.
                .frame(maxHeight: .infinity)
        }
    }
}

#Preview {
    ProgressVerticalLineView()
}
