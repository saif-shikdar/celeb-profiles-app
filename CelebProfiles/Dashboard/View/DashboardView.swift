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
                VStack(alignment: .leading, spacing: 16) {
                    Text("Actors")
                        .font(DesignTokens.Typography.titleFont)
                        .foregroundStyle(DesignTokens.Colors.primary)
                    CardListView(celebrities: viewModel.actors ?? [],
                                 onCardTapped: { celeb in
                        viewModel.onCelebCardTapped(profile: celeb)
                    })
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
