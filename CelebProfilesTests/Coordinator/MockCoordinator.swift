//
//  MockCoordinator.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 28/03/2025.
//

@testable import CelebProfiles

class MockCoordinator: Coordinator {
    var clearNavigationStackCalled = false
    var pushPageCalled = false
    var pushedPage: Coordinator.Page?
    
    override func clearNavigationStack() {
        clearNavigationStackCalled = true
    }
    
    override func pushPage(_ page: Coordinator.Page) {
        pushPageCalled = true
        pushedPage = page
    }
}
