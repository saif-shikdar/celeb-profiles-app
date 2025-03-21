//
//  DashboardViewModel.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import Foundation

class DashboardViewModel: ObservableObject {
    @Published var isLoading: Bool = false
    
    @Published var showErrorMessage: Bool = false
    @Published var errorMessage: String?
    
    var coordinator: Coordinator?
    let profileService: ProfileService
    
    init(coordinator: Coordinator?,
         authService: AuthenticationService = AuthenticationService(),
         profileService: ProfileService = ProfileService()
    ) {
        self.coordinator = coordinator
        self.profileService = profileService
    }
    
    func fetchData() {
//        profileService.fe(userID: userID) { result in
//            switch result {
//            case .success(let user):
//                self.user = user
//            case .failure(let error):
//                self.errorMessage = error.localizedDescription
//                self.showErrorMessage = true;
//            }
//        }
    }
}

extension DashboardViewModel: DashboardViewModelProtocol {
    func navigateToPage(_ page: Coordinator.Page) {
        coordinator?.pushPage(page)
    }
}
