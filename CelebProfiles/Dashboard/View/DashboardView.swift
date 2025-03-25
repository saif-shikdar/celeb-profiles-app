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
                VStack {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Actors")
                            .font(DesignTokens.Typography.titleFont)
                            .foregroundStyle(DesignTokens.Colors.primary)
                        CardListView(celebrities: viewModel.actors ?? [],
                                     onCardTapped: { celeb in
                            viewModel.onCelebCardTapped(profile: celeb)
                        })
                    }
                    .frame(height: 150, alignment: .top)
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Actresses")
                            .font(DesignTokens.Typography.titleFont)
                            .foregroundStyle(DesignTokens.Colors.primary)
                        CardListView(celebrities: viewModel.actresses ?? [],
                                     onCardTapped: { celeb in
                            viewModel.onCelebCardTapped(profile: celeb)
                        })
                    }
                    .frame(height: 150, alignment: .top)
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

#Preview {
    DashboardView(viewModel: DashboardViewModel(coordinator: nil))
}
