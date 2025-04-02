//
//  MockProfileService.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 02/04/2025.
//

import XCTest
@testable import CelebProfiles

class MockProfileService: ProfileService {
    var mockResult: Result<[Profile], Error>?
    
    override func fetchProfiles(gender: Gender,
                                completion: @escaping (Result<[Profile], any Error>) -> Void) async {
        if let result = mockResult {
            completion(result)
        }
    }
}
