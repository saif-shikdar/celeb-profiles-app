//
//  ProfileViewModelTests.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 02/04/2025.
//

import XCTest

@testable import CelebProfiles

class ProfileViewModelTests: XCTestCase {

    var viewModel: ProfileViewModel!
    var mockSessionStorage: MockSessionStorage!
    var mockCoordinator: MockCoordinator!

    override func setUp() {
        super.setUp()
        mockSessionStorage = MockSessionStorage()
        mockCoordinator = MockCoordinator()
    }

    override func tearDown() {
        viewModel = nil
        mockSessionStorage = nil
        mockCoordinator = nil
        super.tearDown()
    }

    // MARK: - Initialization Tests

    func testProfileViewModel_InitializesWithGivenProfile() {
        // Given

        let testProfile = Profile(
            about: "",
            profilePictureURL: "",
            work: .actor,
            beforeFame: "",
            birthSign: .leo,
            birthday: Date.now,
            birthplace: .unitedArabEmirates,
            familyLife: "",
            forename: "Test User",
            surname: "",
            trivia: "")
        // When
        viewModel = ProfileViewModel(
            sessionStorage: mockSessionStorage, coordinator: mockCoordinator,
            profile: testProfile)

        // Then
        XCTAssertNotNil(viewModel.profile)
        XCTAssertEqual(viewModel.profile?.forename, "Test User")
        XCTAssertEqual(viewModel.profile?.birthSign, .leo)
    }

    func testProfileViewModel_InitializesWithNilProfile() {
        // When
        viewModel = ProfileViewModel(
            sessionStorage: mockSessionStorage, coordinator: mockCoordinator,
            profile: nil)

        // Then
        XCTAssertNil(viewModel.profile)
    }

    // MARK: - Navigation Tests

    func testOnBirthSignInfoTapped_NavigatesToCorrectPage() {
        // Given
        let testProfile = Profile(
            about: "",
            profilePictureURL: "",
            work: .footballPlayer,
            beforeFame: "",
            birthSign: .gemini,
            birthday: Date.now,
            birthplace: .unitedArabEmirates,
            familyLife: "",
            forename: "Test User",
            surname: "",
            trivia: "")

        viewModel = ProfileViewModel(
            sessionStorage: mockSessionStorage, coordinator: mockCoordinator,
            profile: testProfile)

        // When
        viewModel.onBirthSignInfoTapped()

        // Then
        XCTAssertTrue(mockCoordinator.pushPageCalled)
        XCTAssertEqual(mockCoordinator.pushedPage, .birthSign(.gemini))
    }

    func
        testOnBirthSignInfoTapped_WithNilProfile_NavigatesToDefaultBirthSignPage()
    {
        // Given
        viewModel = ProfileViewModel(
            sessionStorage: mockSessionStorage, coordinator: mockCoordinator,
            profile: nil)

        // When
        viewModel.onBirthSignInfoTapped()

        // Then
        XCTAssertTrue(mockCoordinator.pushPageCalled)
        XCTAssertEqual(mockCoordinator.pushedPage, .birthSign(.aries))  // Default birth sign
    }

    // MARK: - Error Handling Tests

    func testErrorMessage_DefaultValues() {
        // When
        viewModel = ProfileViewModel(
            sessionStorage: mockSessionStorage, coordinator: mockCoordinator,
            profile: nil)

        // Then
        XCTAssertFalse(viewModel.showErrorMessage)
        XCTAssertNil(viewModel.errorMessage)
    }
}
