//
//  DashboardView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import SwiftUI
import SwiftUICore

struct DashboardView: View {
    @StateObject var viewModel: DashboardViewModel

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 24) {
                    createCardListView(
                        heading: "Actors",
                        celebs: viewModel.actors ?? [],
                        onCardTapped: { celeb in
                            viewModel.onCelebCardTapped(profile: celeb)
                        })
                    createCardListView(
                        heading: "Actresses",
                        celebs: viewModel.actresses ?? [],
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
}

@ViewBuilder
func createCardListView(
    heading: String,
    celebs: [Profile],
    onCardTapped: @escaping (Profile) -> Void
) -> some View {
    VStack(alignment: .leading, spacing: 16) {
        Text(heading)
            .font(DesignTokens.Typography.titleFont)
            .foregroundStyle(DesignTokens.Colors.primary)
        CardListView(
            celebrities: celebs,
            onCardTapped: { profile in onCardTapped(profile) })
    }
    .frame(height: 150, alignment: .top)
}

#Preview {
    DashboardView(viewModel: DashboardViewModel(coordinator: nil))
}
