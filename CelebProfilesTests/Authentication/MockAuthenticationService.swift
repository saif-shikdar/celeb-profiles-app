//
//  MockAuthenticationService.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 28/03/2025.
//

@testable import CelebProfiles
import Foundation

class MockAuthenticationService: AuthenticationService {
    var signInCalled = false
    var shouldReturnError = false
    
    override func signIn(email: String, password: String, completion: @escaping (Error?) -> Void) {
        signInCalled = true
        if shouldReturnError {
            completion(NSError(domain: "", code: 401, userInfo: [NSLocalizedDescriptionKey: "Invalid credentials"]))
        } else {
            completion(nil)
        }
    }
}
