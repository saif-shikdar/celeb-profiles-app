//
//  ProfileViewModel.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import Foundation

class ProfileViewModel: ObservableObject {
    @Published var profile: Profile?
    
    @Published var showErrorMessage: Bool = false
    @Published var errorMessage: String?
    
    var coordinator: Coordinator?
    
    init(coordinator: Coordinator?,
         profile: Profile? = nil) {
        self.coordinator = coordinator
        self.profile = profile
    }
    
    func onBirthSignInfoTapped() {
        navigateToPage(.birthSign(profile?.birthSign ?? .aries))
    }
}

extension ProfileViewModel: ProfileViewModelProtocol {
    func navigateToPage(_ page: Coordinator.Page) {
        coordinator?.pushPage(page)
    }
}
