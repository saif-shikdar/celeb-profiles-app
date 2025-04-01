//
//  DashboardViewModel.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 28/03/2025.
//

import Foundation

class DashboardViewModel: ObservableObject {
    @Published var isLoading: Bool = false

    @Published var showErrorMessage: Bool = false
    @Published var errorMessage: String?

    var coordinator: Coordinator?
    init(
        coordinator: Coordinator?
    ) {
        self.coordinator = coordinator
    }

    func fetchData() async {

    }
}
