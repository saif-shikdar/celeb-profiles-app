//
//  SettingsView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import SwiftUI
import SwiftUICore

struct SettingsView: View {
    @StateObject var viewModel: SettingsViewModel

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Spacer()
                    ProfilePictureView(
                        imageURL: viewModel.user?.profilePictureURL ?? "",
                        forename: viewModel.user?.forename ?? "",
                        surname: viewModel.user?.surname ?? ""
                    )
                    .padding(.bottom, 64)
                    Spacer()
                    SettingsButtonView(iconName: "lock.fill",
                                       text: "Sign Out",
                                       onButtonTap: viewModel.onLogoutTapped)
                    .alert("Error", isPresented: $viewModel.showErrorMessage) {
                        
                    } message: {
                        Text(viewModel.errorMessage ?? "Unknown Error")
                    }
                }
                .task {
                    viewModel.fetchData()
                }
                .safeAreaPadding()
                LoadingView(isLoading: viewModel.isLoading)
            }
        }
    }
}

#Preview {
    SettingsView(
        viewModel: SettingsViewModel(coordinator: nil)
    )
}
