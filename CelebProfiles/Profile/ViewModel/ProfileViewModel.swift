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
    
    let sessionStorage: SessionStorage
    
    init(sessionStorage: SessionStorage = SessionStorage(),
         profile: Profile? = nil) {
        self.sessionStorage = sessionStorage
        self.profile = profile
    }
}
