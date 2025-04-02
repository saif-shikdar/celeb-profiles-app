//
//  CustomErrorTests.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 02/04/2025.
//

import XCTest

@testable import CelebProfiles

class CustomErrorTests: XCTestCase {

    func testUnknownError_HasCorrectDescription() {
        // Given
        let error: CustomError = .unknownError

        // When
        let description = error.localizedDescription

        // Then
        XCTAssertEqual(
            description, "Unknown Error Occurred",
            "The unknown error description should match.")
    }

    func testNoDataError_HasCorrectDescription() {
        // Given
        let error: CustomError = .noData

        // When
        let description = error.localizedDescription

        // Then
        XCTAssertEqual(
            description, "No Data Found",
            "The no data error description should match.")
    }
}
