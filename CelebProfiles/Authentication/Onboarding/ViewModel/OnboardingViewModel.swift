//
//  OnboardingViewModel.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 09/04/2025.
//

import Foundation

class OnboardingViewModel: ObservableObject {
    @Published var isLoading: Bool = true
    
    @Published var showErrorMessage: Bool = false
    @Published var errorMessage: String?
    
    var coordinator: Coordinator?
    let authService: AuthenticationService
    let sessionStorage: SessionStorage
    
    init(coordinator: Coordinator?,
         sessionStorage: SessionStorage = SessionStorage(),
         authService: AuthenticationService = AuthenticationService()) {
        self.coordinator = coordinator
        self.sessionStorage = sessionStorage
        self.authService = authService
    }
    
    func fetchData() {
        guard let userID = sessionStorage.userID else {
            self.errorMessage = "Unable to fetch user information. Please try again later."
            self.showErrorMessage = true;
            return
        }
        
        authService.hasUserData(userID: userID) { result in
            switch result {
            case .success:
                print("Found User Data")
            case .failure:
                print("User Data does not exist")
            }
        }
    }
}

