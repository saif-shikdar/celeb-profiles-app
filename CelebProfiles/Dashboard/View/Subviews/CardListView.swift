//
//  CardListView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 22/03/2025.
//

import SwiftUI

struct CardListView: View {
    let celebrities: [Profile]
    let onCardTapped: (Profile) -> Void

    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(celebrities, id: \.self) { celeb in
                    CelebrityCardView(
                        profile: celeb,
                        onButtonTapped: { onCardTapped(celeb) })
                }
            }
        }
        .safeAreaPadding()
        .clipped()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CardListView(celebrities: [], onCardTapped: { profile in })
}
