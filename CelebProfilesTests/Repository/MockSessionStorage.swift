//
//  MockSessionStorage.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 02/04/2025.
//

import XCTest
@testable import CelebProfiles

class MockSessionStorage: SessionStorageType {
    private var storage: [String: String] = [:]

    var userID: String? {
        return storage["firebaseUserID"]
    }
    
    var userEmail: String? {
        return storage["email"]
    }

    func storeUserID(userID: String) {
        storage["firebaseUserID"] = userID
    }

    func storeUserEmail(email: String) {
        storage["email"] = email
    }
}
