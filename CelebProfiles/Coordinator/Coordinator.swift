//
//  Coordinator.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import Foundation
import SwiftUI

class Coordinator: ObservableObject {
    // Manage the navigation stack here
    @Published var navigationPath = NavigationPath()
    
    func pushPage(_ page: Page) {
        if page == .root {
            // Home is the root, so we clear the path to navigation back
            navigationPath.removeLast(navigationPath.count)
        } else {
            navigationPath.append(page)
        }
    }
    
    func clearNavigationStack() {
        navigationPath.removeLast(navigationPath.count)
    }
    
    enum Page: Hashable {
        case root
        case signUp
        case profile(Profile)
        case birthSign(BirthSign)
    }
}

// ViewModel Protocols
protocol CelebritiesViewModelProtocol {
    func navigateToPage(_ page: Coordinator.Page)
}

protocol LoginViewModelProtocol {
    func navigateToPage(_ page: Coordinator.Page)
}

protocol ProfileViewModelProtocol {
    func navigateToPage(_ page: Coordinator.Page)
}
