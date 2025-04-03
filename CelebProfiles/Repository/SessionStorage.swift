//
//  SessionStorage.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import Foundation

enum SessionStorageError: Swift.Error {
    case notFound
    case other(Error)
}

protocol SessionStorageType {
    var userID: String? { get }
    
    func storeUserID(userID: String)
}

class SessionStorage: SessionStorageType {
    private enum Constants {
        static let emailKey = "email"
        static let userIDKey = "firebaseUserID"
    }

    private let defaults = UserDefaults.standard

    var userID: String? {
        return defaults.value(forKey: Constants.userIDKey) as? String
    }

    func storeUserID(userID: String) {
        defaults.set(userID, forKey: Constants.userIDKey)
    }
}
