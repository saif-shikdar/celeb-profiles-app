//
//  CelebritiesView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import SwiftUI
import SwiftUICore

struct CelebritiesView: View {
    @StateObject var viewModel: CelebritiesViewModel

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                HStack {
                    Text("Trending Celebrities 2025")
                        .font(DesignTokens.Typography.titleFont)
                        .foregroundStyle(DesignTokens.Colors.primary)
                    Spacer()
                    Button {
                        viewModel.onGenderButtonTapped()
                    } label : {
                        ZStack(alignment: .bottomTrailing) {
                            Image(viewModel.fetchGenderFilterIcon())
                                .resizable()
                            Image(systemName: "arrow.trianglehead.2.clockwise")
                                .resizable()
                                .foregroundStyle(Color.primary)
                                .frame(width: 12, height: 12)
                        }
                        .frame(width: 35,
                               height: 35)
                    }
                }
                createCardListView(
                    heading: "Actors / Actresses",
                    celebs: viewModel.actors ?? [],
                    onCardTapped: { celeb in
                        viewModel.onCelebCardTapped(profile: celeb)
                    })
                createCardListView(
                    heading: "Football Players",
                    celebs: viewModel.footballPlayers ?? [],
                    onCardTapped: { celeb in
                        viewModel.onCelebCardTapped(profile: celeb)
                    })
                createCardListView(
                    heading: "Influencers",
                    celebs: viewModel.influencers ?? [],
                    onCardTapped: { celeb in
                        viewModel.onCelebCardTapped(profile: celeb)
                    })
                Spacer()
            }
            .task {
                await viewModel.fetchData()
            }
            .alert("Error", isPresented: $viewModel.showErrorMessage) {

            } message: {
                Text(viewModel.errorMessage ?? "Unknown Error")
            }
        }
        .safeAreaPadding()
        .clipped()
    }
}

@ViewBuilder
func createCardListView(
    heading: String,
    celebs: [Profile],
    onCardTapped: @escaping (Profile) -> Void
) -> some View {
    VStack(alignment: .leading, spacing: 16) {
        Text(heading)
            .font(DesignTokens.Typography.smallHeadingFont)
            .foregroundStyle(DesignTokens.Colors.primary)
        CardListView(
            celebrities: celebs,
            onCardTapped: { profile in onCardTapped(profile) })
    }
    .frame(height: 150, alignment: .top)
}

#Preview {
    CelebritiesView(viewModel: CelebritiesViewModel(coordinator: nil))
}
