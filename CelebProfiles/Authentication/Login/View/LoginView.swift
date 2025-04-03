//
//  LoginView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import SwiftUI
import SwiftUICore

struct LoginView: View {
    @ObservedObject var viewModel: LoginViewModel

    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 16) {
                Text("Login")
                    .font(DesignTokens.Typography.titleFont)
                    .foregroundStyle(DesignTokens.Colors.primary)
                    .textCase(.uppercase)
                    .padding(.bottom, 30)
                Button {
                    viewModel.signIn()
                } label: {
                    HStack(spacing: 12) {
                        Image(systemName: "apple.logo")
                            .foregroundStyle(DesignTokens.Colors.secondary)
                        Text("Sign in with Apple")
                            .foregroundStyle(DesignTokens.Colors.secondary)
                            .font(DesignTokens.Typography.bodyFont)
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(DesignTokens.Colors.primary)
            }
            .safeAreaPadding()
        }
    }
}

#Preview {
    LoginView(viewModel: LoginViewModel(coordinator: nil))
}
