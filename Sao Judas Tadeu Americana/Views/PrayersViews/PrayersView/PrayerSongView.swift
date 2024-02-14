//
//  PrayerSongView.swift
//  Sao Judas Tadeu Americana
//
//  Created by Vitor Gomes on 13/02/24.
//

import SwiftUI

struct PrayerSongView: View {
    
    @State var selectedType: String
    @State var name: String
    @State var lyric: String
    
    var body: some View {
        List {
            Text(lyric)
        }
        .navigationTitle("\(selectedType) - \(name)")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                // TODO: Add functionality here
                // TODO: Check the color
                Image(systemName: "square.and.arrow.up")
            }
        }
    }
}

#Preview {
    NavigationStack {
        PrayerSongView(selectedType: "Canção", name: "XXXXXX", lyric: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies laoreet pretium. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean eget lectus nibh. Donec feugiat hendrerit lorem. Donec luctus libero a rutrum molestie. Quisque dictum euismod eros, sit amet luctus neque dignissim a. Fusce feugiat ut felis vitae congue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse malesuada scelerisque mollis. Maecenas quis efficitur nisi. Phasellus quis viverra neque. Integer nec justo arcu. Proin scelerisque eu turpis sed sollicitudin. In scelerisque elit id metus hendrerit sollicitudin. Vivamus non lobortis libero. Donec ut scelerisque sapien. Aenean dignissim hendrerit diam at accumsan. Nullam euismod interdum est, quis sodales odio convallis id.")
    }
}
