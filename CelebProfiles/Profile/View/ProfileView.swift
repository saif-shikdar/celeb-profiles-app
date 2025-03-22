//
//  ProfileView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import SwiftUI
import SwiftUICore

struct ProfileView: View {
    @ObservedObject var viewModel: ProfileViewModel
    @State private var scrollPosition: CGPoint = .zero
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .center) {
                    AsyncImage(
                        url: URL(
                            string: viewModel.profile?.profilePictureURL ?? "")
                    ) { phase in
                        switch phase {
                        case .success(let image):
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .edgesIgnoringSafeArea(.all)
                                .frame(
                                    width: UIScreen.main.bounds.width,
                                    height: UIScreen.main.bounds.height)
                        default:
                            EmptyView()
                        }
                    }
                    Spacer()
                        .frame(height: 200)
                }
                ScrollView {
                    VStack {
                        Spacer()
                            .frame(height: 700)
                        VStack(alignment: .leading, spacing: 24) {
                            ProfileTitleView(
                                name:
                                    "\(viewModel.profile?.forename ?? "") \(viewModel.profile?.surname ?? "")",
                                work: viewModel.profile?.work ?? "")
                            ProfileDetailRowView(
                                image: "birthday.cake",
                                heading: "Birthday",
                                content: viewModel.profile?.birthday ?? "")
                            ProfileDetailRowView(
                                image: "bubbles.and.sparkles",
                                heading: "Birth Sign",
                                content: viewModel.profile?.birthSign ?? "")
                            ProfileDetailRowView(
                                image: "location.circle",
                                heading: "Birthplace",
                                content: viewModel.profile?.birthplace ?? "")
                            ProfileDetailRowView(
                                image: "lungs.fill",
                                heading: "Age",
                                content: "21 years old"
                            )
                            .padding(.bottom, 12)
                            ProfileSectionView(
                                heading: "Biography",
                                content: viewModel.profile?.about ?? "")
                            ProfileSectionView(
                                heading: "Before Fame",
                                content: viewModel.profile?.beforeFame ?? "")
                            ProfileSectionView(
                                heading: "Trivia",
                                content: viewModel.profile?.trivia ?? "")
                            ProfileSectionView(
                                heading: "Family Life",
                                content: viewModel.profile?.familyLife ?? "")
                            Spacer(minLength: 700)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .safeAreaPadding()
                        .background(DesignTokens.Colors.black)
                    }
                    .background(
                        GeometryReader { geometry in
                            Color.clear
                                .preference(
                                    key: ScrollOffsetPreferenceKey.self,
                                    value: geometry.frame(in: .named("scroll"))
                                        .origin)
                        }
                    )
                    .onPreferenceChange(ScrollOffsetPreferenceKey.self) {
                        value in
                        self.scrollPosition = value
                    }
                }
                .coordinateSpace(name: "scroll")
                if scrollPosition.y < -520 {
                    VStack {
                        Rectangle()
                            .fill(DesignTokens.Colors.black)
                            .frame(height: 180)
                        Spacer()
                    }
                }
            }
            .background(DesignTokens.Colors.black)
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "xmark.circle.fill")
                }
            }
        }
        .tint(DesignTokens.Colors.white)
    }
}

#Preview {
    ProfileView(
        viewModel: ProfileViewModel(
            profile: Profile(
                about:
                    "Midfielder who joined Borussia Dortmund after playing for Birmingham City from 2010 to 2019. In 2023, he joined club Real Madrid. He has also played for the English national team.",
                profilePictureURL:
                    "https://www.fifatrainingcentre.com/media/images/game/World-class-bellingham.variant1920x1080.jpg",
                work: "Football Player",
                beforeFame: "He began playing for Birmingham City at age 14.",
                birthSign: "Cancer",
                birthday: "2003-06-29",
                birthplace: "gb",
                familyLife:
                    "His brother Jobe also plays soccer. In 2025 he was seen out with model Ashlyn Castro.",
                forename: "Jude",
                surname: "Bellingham",
                trivia:
                    "In his first game with Borussia Dortmund, he became their youngest goalscorer ever."
            )))
}
