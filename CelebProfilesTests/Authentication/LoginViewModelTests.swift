//
//  LoginViewModelTests.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 28/03/2025.
//

import XCTest
@testable import CelebProfiles

class LoginViewModelTests: XCTestCase {
    
    var viewModel: LoginViewModel!
    var mockAuthService: MockAuthenticationService!
    var mockCoordinator: MockCoordinator!
    
    override func setUp() {
        super.setUp()
        mockAuthService = MockAuthenticationService()
        mockCoordinator = MockCoordinator()
        viewModel = LoginViewModel(coordinator: mockCoordinator,
                                   authService: mockAuthService)
    }
    
    override func tearDown() {
        viewModel = nil
        mockAuthService = nil
        mockCoordinator = nil
        super.tearDown()
    }
    
    func testSignIn_WithEmptyFields_ShowsErrorMessage() {
        // Given
        viewModel.email = ""
        viewModel.password = ""
        
        // When
        viewModel.signIn()
        
        // Then
        XCTAssertTrue(viewModel.showErrorMessage)
        XCTAssertEqual(viewModel.errorMessage, "Fields cannot be empty")
    }
    
    func testSignIn_WithValidCredentials_CallsAuthService() {
        // Given
        viewModel.email = "test@example.com"
        viewModel.password = "password123"
        
        // When
        viewModel.signIn()
        
        // Then
        XCTAssertTrue(mockAuthService.signInCalled)
    }
    
    func testSignIn_WithInvalidCredentials_ShowsErrorMessage() {
        // Given
        viewModel.email = "test@example.com"
        viewModel.password = "wrongpassword"
        mockAuthService.shouldReturnError = true
        
        // When
        viewModel.signIn()
        
        // Then
        XCTAssertTrue(viewModel.showErrorMessage)
        XCTAssertEqual(viewModel.errorMessage, "Invalid credentials")
    }
    
    func testNavigateBackToRoot_CallsCoordinator() {
        // When
        viewModel.navigateBackToRoot()
        
        // Then
        XCTAssertTrue(mockCoordinator.clearNavigationStackCalled)
    }
    
    func testNavigateToPage_CallsCoordinatorWithCorrectPage() {
        // Given
        let profile = Profile(
            about:
                "Midfielder who joined Borussia Dortmund after playing for Birmingham City from 2010 to 2019. In 2023, he joined club Real Madrid. He has also played for the English national team.",
            profilePictureURL:
                "https://www.fifatrainingcentre.com/media/images/game/World-class-bellingham.variant1920x1080.jpg",
            work: .footballPlayer,
            beforeFame: "He began playing for Birmingham City at age 14.",
            birthSign: .gemini,
            birthday: Date(timeIntervalSince1970: 1056898266),
            birthplace: .greatBritain,
            familyLife:
                "His brother Jobe also plays soccer. In 2025 he was seen out with model Ashlyn Castro.",
            forename: "Jude",
            surname: "Bellingham",
            trivia:
                "In his first game with Borussia Dortmund, he became their youngest goalscorer ever."
        )
        
        // When
        viewModel.navigateToPage(.profile(profile))
        
        // Then
        XCTAssertTrue(mockCoordinator.pushPageCalled)
        XCTAssertEqual(mockCoordinator.pushedPage, .profile(profile))
    }
}
