//
//  CoordinatorContentView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import SwiftData
import SwiftUI

struct CoordinatorContentView: View {
    @EnvironmentObject var coordinator: Coordinator
    @EnvironmentObject var authService: AuthenticationService
    
    var body: some View {
        NavigationStack(path: $coordinator.navigationPath) {
            if authService.signedIn {
                createTabView()
                .navigationDestination(for: Coordinator.Page.self) { page in
                    switch page {
                    case .root:
                        createTabView()
                    case .profile(let profile):
                        ProfileView(
                            viewModel: ProfileViewModel(
                                coordinator: coordinator,
                                profile: profile))
                    case .signUp:
                        LoginView(
                            viewModel: LoginViewModel(
                                coordinator: coordinator))
                    case .birthSign(let birthSign):
                        ProfileBirthSignView(birthSign: birthSign)
                    }
                }
            } else {
                LoginView(
                    viewModel: LoginViewModel(
                        coordinator: coordinator))
            }
        }
    }
    
    @ViewBuilder
    func createTabView() -> some View {
        TabView {
            DashboardView(
                viewModel: DashboardViewModel(
                    coordinator: coordinator))
            .tabItem {
                Label("Dashboard", systemImage: "house.fill")
            }
            SettingsView(
                viewModel: SettingsViewModel(
                    coordinator: coordinator)
            )
            .tabItem {
                Label("Settings", systemImage: "gearshape.fill")
            }
        }
    }
}
