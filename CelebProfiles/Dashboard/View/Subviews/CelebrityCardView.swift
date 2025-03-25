//
//  CelebrityCardView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 22/03/2025.
//

import SwiftUI

struct CelebrityCardView: View {
    let profile: Profile
    let onButtonTapped: () -> Void

    var body: some View {
        Button {
            onButtonTapped()
        } label: {
            VStack(alignment: .center, spacing: 6) {
                AsyncImage(
                    url: URL(
                        string: profile.profilePictureURL)
                ) { phase in
                    switch phase {
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(
                                width: 80,
                                height: 80
                            )
                            .background(Color.red)
                            .cornerRadius(25)

                    default:
                        EmptyView()
                    }
                }
                Text("\(profile.forename) \(profile.surname)")
                    .font(DesignTokens.Typography.captionFont)
                    .foregroundStyle(DesignTokens.Colors.primary)
            }
            .frame(
                width: 100,
                height: 80,
                alignment: .leading)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CelebrityCardView(
        profile: Profile(
            about:
                "Midfielder who joined Borussia Dortmund after playing for Birmingham City from 2010 to 2019. In 2023, he joined club Real Madrid. He has also played for the English national team.",
            profilePictureURL:
                "https://www.fifatrainingcentre.com/media/images/game/World-class-bellingham.variant1920x1080.jpg",
            work: "Football Player",
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
        ),
        onButtonTapped: {})
}
