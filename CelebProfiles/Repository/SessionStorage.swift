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
    var forename: String? { get }
    var surname: String? { get }
    
    func storeUserID(userID: String)
    func storeForename(forename: String)
    func storeSurname(surname: String)
}

class SessionStorage: SessionStorageType {
    private enum Constants {
        static let emailKey = "email"
        static let userIDKey = "firebaseUserID"
        static let fornameKey = "forename"
        static let surnameKey = "surname"
    }

    private let defaults = UserDefaults.standard

    var userID: String? {
        return defaults.value(forKey: Constants.userIDKey) as? String
    }
    
    var forename: String? {
        return defaults.value(forKey: Constants.fornameKey) as? String
    }
    
    var surname: String? {
        return defaults.value(forKey: Constants.surnameKey) as? String
    }

    func storeUserID(userID: String) {
        defaults.set(userID, forKey: Constants.userIDKey)
    }
    
    func storeForename(forename: String) {
        defaults.set(forename, forKey: Constants.fornameKey)
    }
    
    func storeSurname(surname: String) {
        defaults.set(surname, forKey: Constants.surnameKey)
    }
}
