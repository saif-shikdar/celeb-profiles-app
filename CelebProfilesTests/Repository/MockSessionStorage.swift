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

    func storeUserID(userID: String) {
        storage["firebaseUserID"] = userID
    }
}
