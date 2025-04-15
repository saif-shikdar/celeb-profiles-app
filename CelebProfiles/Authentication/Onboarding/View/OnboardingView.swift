//
//  OnboardingView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 09/04/2025.
//

import SwiftUI
import SwiftUICore

struct OnboardingView: View {
    @ObservedObject var viewModel: OnboardingViewModel

    var body: some View {
        VStack {
            if (viewModel.isLoading) {
                LoadingView(isLoading: true)
            } else {
                Text("Onboarding")
            }
        }
        .task {
            viewModel.fetchData()
        }
    }
}

#Preview {
    OnboardingView(viewModel: OnboardingViewModel(coordinator: nil))
}
