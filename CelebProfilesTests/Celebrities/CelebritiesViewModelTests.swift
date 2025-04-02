//
//  CelebritiesViewModelTests.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 02/04/2025.
//

import XCTest
@testable import CelebProfiles

class CelebritiesViewModelTests: XCTestCase {
    
    var viewModel: CelebritiesViewModel!
    var mockProfileService: MockProfileService!
    var mockCoordinator: MockCoordinator!

    override func setUp() {
        super.setUp()
        mockProfileService = MockProfileService()
        mockCoordinator = MockCoordinator()
        viewModel = CelebritiesViewModel(coordinator: mockCoordinator,
                                         profileService: mockProfileService)
    }

    override func tearDown() {
        viewModel = nil
        mockProfileService = nil
        mockCoordinator = nil
        super.tearDown()
    }
    
    // MARK: - Test Fetch Data

    func testFetchData_SuccessfullyFiltersProfiles() async {
        // Given: Mock profile data
        let mockProfiles = [
            Profile(about: "",
                    profilePictureURL: "",
                    work: .actor,
                    beforeFame: "",
                    birthSign: .aquarius,
                    birthday: Date.now,
                    birthplace: .unitedArabEmirates,
                    familyLife: "",
                    forename: "Actor A",
                    surname: "",
                    trivia: ""),
            Profile(about: "",
                    profilePictureURL: "",
                    work: .footballPlayer,
                    beforeFame: "",
                    birthSign: .cancer,
                    birthday: Date.now,
                    birthplace: .unitedStates,
                    familyLife: "",
                    forename: "Footballer B",
                    surname: "",
                    trivia: ""),
            Profile(about: "",
                    profilePictureURL: "",
                    work: .influencer,
                    beforeFame: "",
                    birthSign: .gemini,
                    birthday: Date.now,
                    birthplace: .singapore,
                    familyLife: "",
                    forename: "Influencer C",
                    surname: "",
                    trivia: ""),
        ]
        mockProfileService.mockResult = .success(mockProfiles)
        
        // When
        await viewModel.fetchData()
        
        // Then
        XCTAssertEqual(viewModel.actors?.count, 1)
        XCTAssertEqual(viewModel.footballPlayers?.count, 1)
        XCTAssertEqual(viewModel.influencers?.count, 1)
    }
    
    func testFetchData_Failure_ShowsErrorMessage() async {
        // Given: Mock failure
        let mockError = NSError(domain: "Test", code: 500, userInfo: [NSLocalizedDescriptionKey: "Failed to load data"])
        mockProfileService.mockResult = .failure(mockError)
        
        // When
        await viewModel.fetchData()
        
        // Then
        XCTAssertTrue(viewModel.showErrorMessage)
        XCTAssertEqual(viewModel.errorMessage, "Failed to load data")
    }
    
    // MARK: - Test Gender Filter Toggle

    func testOnGenderButtonTapped_TogglesGenderCorrectly() async {
        // Given
        XCTAssertEqual(viewModel.genderFilter, .other) // Default gender

        // When
        viewModel.onGenderButtonTapped()
        XCTAssertEqual(viewModel.genderFilter, .m)

        viewModel.onGenderButtonTapped()
        XCTAssertEqual(viewModel.genderFilter, .f)

        viewModel.onGenderButtonTapped()
        XCTAssertEqual(viewModel.genderFilter, .other)
    }
    
    func testFetchGenderFilterIcon_ReturnsCorrectIcons() {
        // Given & When
        viewModel.genderFilter = .m
        XCTAssertEqual(viewModel.fetchGenderFilterIcon(), Images.maleIcon)

        viewModel.genderFilter = .f
        XCTAssertEqual(viewModel.fetchGenderFilterIcon(), Images.femaleIcon)

        viewModel.genderFilter = .other
        XCTAssertEqual(viewModel.fetchGenderFilterIcon(), Images.genderIcon)
    }
    
    // MARK: - Test Navigation

    func testOnCelebCardTapped_NavigatesToProfilePage() {
        // Given
        let profile = Profile(about: "",
                profilePictureURL: "",
                work: .actor,
                beforeFame: "",
                birthSign: .aquarius,
                birthday: Date.now,
                birthplace: .unitedArabEmirates,
                familyLife: "",
                forename: "Actor A",
                surname: "",
                trivia: "")
        
        // When
        viewModel.onCelebCardTapped(profile: profile)

        // Then
        XCTAssertTrue(mockCoordinator.pushPageCalled)
        XCTAssertEqual(mockCoordinator.pushedPage, .profile(profile))
    }

    func testNavigateToPage_CallsCoordinator() {
        // Given
        let page = Coordinator.Page.profile(Profile(about: "",
                                                    profilePictureURL: "",
                                                    work: .influencer,
                                                    beforeFame: "",
                                                    birthSign: .capricorn,
                                                    birthday: Date.now,
                                                    birthplace: .greatBritain,
                                                    familyLife: "",
                                                    forename: "David",
                                                    surname: "Beckham",
                                                    trivia: ""))

        // When
        viewModel.navigateToPage(page)

        // Then
        XCTAssertTrue(mockCoordinator.pushPageCalled)
        XCTAssertEqual(mockCoordinator.pushedPage, page)
    }
}
