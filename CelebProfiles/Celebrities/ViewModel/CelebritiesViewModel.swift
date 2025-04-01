//
//  CelebritiesViewModel.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import Foundation

class CelebritiesViewModel: ObservableObject {
    @Published var isLoading: Bool = false

    @Published var actors: [Profile]?
    @Published var footballPlayers: [Profile]?
    @Published var influencers: [Profile]?

    @Published var genderFilter: Gender = .other

    @Published var showErrorMessage: Bool = false
    @Published var errorMessage: String?

    var coordinator: Coordinator?
    let profileService: ProfileService

    init(
        coordinator: Coordinator?,
        profileService: ProfileService = ProfileService()
    ) {
        self.coordinator = coordinator
        self.profileService = profileService
    }

    func fetchData() async {
        await profileService.fetchProfiles(gender: genderFilter) { result in
            Task {
                await MainActor.run {
                    switch result {
                    case .success(let profiles):
                        self.actors = profiles.filter { $0.work == .actor }
                        self.footballPlayers = profiles.filter {
                            $0.work == .footballPlayer
                        }
                        self.influencers = profiles.filter {
                            $0.work == .influencer
                        }
                    case .failure(let error):
                        self.errorMessage = error.localizedDescription
                        self.showErrorMessage = true
                    }
                }
            }
        }
    }

    func fetchGenderFilterIcon() -> String {
        switch genderFilter {
        case .m:
            return Images.maleIcon
        case .f:
            return Images.femaleIcon
        case .other:
            return Images.genderIcon
        }
    }

    func onGenderButtonTapped() {
        switch genderFilter {
        case .m:
            genderFilter = .f
        case .f:
            genderFilter = .other
        case .other:
            genderFilter = .m
        }
        Task {
            await fetchData()
        }
    }

    func onCelebCardTapped(profile: Profile) {
        coordinator?.pushPage(.profile(profile))
    }
}

extension CelebritiesViewModel: CelebritiesViewModelProtocol {
    func navigateToPage(_ page: Coordinator.Page) {
        coordinator?.pushPage(page)
    }
}
