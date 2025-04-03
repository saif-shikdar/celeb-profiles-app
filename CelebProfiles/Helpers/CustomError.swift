//
//  CustomError.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import Foundation

enum CustomError: Error {
    case unknownError
    case noData
    case appleSignInError
}

extension CustomError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .unknownError:
            "Unknown Error Occurred"
        case .noData:
            "No Data Found"
        case .appleSignInError:
            "Apple Sign in currently unavailable. Please try again later"
        }
    }
}
