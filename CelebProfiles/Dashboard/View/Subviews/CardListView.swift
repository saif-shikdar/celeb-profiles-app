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
            HStack(spacing: 16) {
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
    let profile = Profile(
        about:
            "Midfielder who joined Borussia Dortmund after playing for Birmingham City from 2010 to 2019. In 2023, he joined club Real Madrid. He has also played for the English national team.",
        profilePictureURL:
            "https://www.fifatrainingcentre.com/media/images/game/World-class-bellingham.variant1920x1080.jpg",
        work: .footballPlayer,
        beforeFame: "He began playing for Birmingham City at age 14.",
        birthSign: .cancer,
        birthday: DateFormatter().date(from: "2003-06-29") ?? Date.now,
        birthplace: .greatBritain,
        familyLife:
            "His brother Jobe also plays soccer. In 2025 he was seen out with model Ashlyn Castro.",
        forename: "Jude",
        surname: "Bellingham",
        trivia:
            "In his first game with Borussia Dortmund, he became their youngest goalscorer ever."
    )
    CardListView(
        celebrities: [profile, profile, profile, profile, profile, profile],
        onCardTapped: { profile in })
}
