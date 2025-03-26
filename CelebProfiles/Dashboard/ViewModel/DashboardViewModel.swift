//
//  DashboardViewModel.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import Foundation

class DashboardViewModel: ObservableObject {
    @Published var isLoading: Bool = false
    
    @Published var actors: [Profile]?
    @Published var actresses: [Profile]?
    
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
    
    func fetchData() async {
        await profileService.fetchProfiles { result in
            Task {
                await MainActor.run {
                    switch result {
                    case .success(let profiles):
                        self.actors = profiles.filter { $0.work == .actor }
                        self.actresses = profiles.filter { $0.work == .actress }
                    case .failure(let error):
                        self.errorMessage = error.localizedDescription
                        self.showErrorMessage = true
                    }
                }
            }
        }
    }
    
    func onCelebCardTapped(profile: Profile) {
        coordinator?.pushPage(.profile(profile))
    }
}

extension DashboardViewModel: DashboardViewModelProtocol {
    func navigateToPage(_ page: Coordinator.Page) {
        coordinator?.pushPage(page)
    }
}
