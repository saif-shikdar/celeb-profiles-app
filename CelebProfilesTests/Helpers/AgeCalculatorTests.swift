//
//  AgeCalculatorTests.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 02/04/2025.
//

import XCTest
@testable import CelebProfiles

class AgeCalculatorTests: XCTestCase {
    
    func testCalculateAge_CorrectForPastDate() {
        // Given: A birthdate 30 years ago
        let calendar = Calendar.current
        let dateOfBirth = calendar.date(byAdding: .year, value: -30, to: Date())!
        
        // When
        let age = AgeCalculator.calculateAge(from: dateOfBirth)
        
        // Then
        XCTAssertEqual(age, 30, "Age should be 30 for a birthdate 30 years ago.")
    }
    
    func testCalculateAge_CorrectForRecentBirthday() {
        // Given: A birthdate exactly today 25 years ago
        let calendar = Calendar.current
        let dateOfBirth = calendar.date(byAdding: .year, value: -25, to: Date())!
        
        // When
        let age = AgeCalculator.calculateAge(from: dateOfBirth)
        
        // Then
        XCTAssertEqual(age, 25, "Age should be 25 for a birthdate exactly 25 years ago today.")
    }
    
    func testCalculateAge_ZeroForToday() {
        // Given: Birthdate is today
        let dateOfBirth = Date()
        
        // When
        let age = AgeCalculator.calculateAge(from: dateOfBirth)
        
        // Then
        XCTAssertEqual(age, 0, "Age should be 0 if the birthdate is today.")
    }
    
    func testCalculateAge_NegativeForFutureDate() {
        // Given: A birthdate 5 years in the future
        let calendar = Calendar.current
        let futureDate = calendar.date(byAdding: .year, value: 5, to: Date())!
        
        // When
        let age = AgeCalculator.calculateAge(from: futureDate)
        
        // Then
        XCTAssertEqual(age, -5, "Age should be -5 for a birthdate 5 years in the future.")
    }
}
