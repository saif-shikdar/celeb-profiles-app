//
//  LoginViewModel.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import Foundation

class LoginViewModel: ObservableObject {
    var coordinator: Coordinator?
    private let authService: AuthenticationService
    
    init(coordinator: Coordinator?,
         authService: AuthenticationService = AuthenticationService()) {
        self.coordinator = coordinator
        self.authService = authService
    }
    
    func signIn() {
        authService.startSignInWithAppleFlow()
    }
}

extension LoginViewModel: LoginViewModelProtocol {
    func navigateBackToRoot() {
        coordinator?.clearNavigationStack()
    }
    
    func navigateToPage(_ page: Coordinator.Page) {
        coordinator?.pushPage(page)
    }
}

