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
            if (viewModel.authService.isLoading) {
                LoadingView(isLoading: true)
            } else {
                VStack(alignment: .center, spacing: 16) {
                    Text("Login")
                        .font(DesignTokens.Typography.titleFont)
                        .foregroundStyle(DesignTokens.Colors.primary)
                        .textCase(.uppercase)
                        .padding(.bottom, 30)
                    CustomTextField(placeholder: "Email", text: $viewModel.email)
                    CustomSecureField(
                        placeholder: "Password", text: $viewModel.password)
                    CustomTextButton(text: "Sign In",
                                     onButtonTapped: viewModel.signIn)
                    .alert("Error", isPresented: $viewModel.showErrorMessage) {

                    } message: {
                        Text(viewModel.errorMessage ?? "Unknown Error")
                    }
                }
                .safeAreaPadding()
            }
        }
    }
}

#Preview {
    LoginView(viewModel: LoginViewModel(coordinator: nil))
}
